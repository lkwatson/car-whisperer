import requests
import whisperer_backend
import random
import os


# pip install request
# pip install firebase-admin


#url = "https://junctionev.enstoflow.com/api/v1/chargingPointGroup/"
base_url = "https://junctionev.enstoflow.com/api/v1/"
group_endpoint = "chargingPointGroup/"
start_endpoint = "chargingPoint/%1/%2/starttransaction/%3"
stop_endpoint = "chargingPoint/%1/%2/stoptransaction/"

def main(carId):
	myid = 7
	auth_user = os.environ['ENSTO_USER']
	auth_pw = os.environ['ENSTO_PW']
	request = requests.get(base_url + group_endpoint + str(myid), auth=(auth_user, auth_pw))
	print(request.status_code)
	response = request.json()
	chargingPoints = response["chargingPoints"][0]
	connectors = chargingPoints["connectors"]
	chargingPointId = connectors[0]["chargingPointIdentifier"]
	print(chargingPointId)
	connectorToUse = prepare_connector(connectors)
	if connectorToUse is None:
		return
	whisperer_backend.init()
	if connectorToUse == False:
		print("Nice code")
		return
	start_transaction(chargingPointId, connectorToUse["connectorId"], carId, "321" + str(random.randint(1,1000)))

def has_free_connectors(connectors):
	for conn in connectors:
		if conn["status"] == "Available":
			print("Found a free connector!")
			return True
	print("No free connectors available!")
	return False


def prepare_connector(connectors):
	if has_free_connectors(connectors) == False:
		print("No free connectors, handle this?")
		return

	print("FILTERING")
	connectors_filtered = list(filter(lambda x: x["status"] == "Available", connectors))
	connectors_filtered = list(filter(lambda x: x["connectorId"] != 0, connectors_filtered))
	if len(connectors_filtered) < 1:
		print('No free connectors!')
		return
	print("LENGHT OF CONNECTRS " + str(len(connectors_filtered)))
	connector = connectors_filtered[len(connectors_filtered) -1]
	print("Connector to use ", connector)
	return connector

def start_transaction(charging_point_id, connector_id, car_id, transaction_id):
	print("start")
	endpoint = start_endpoint.replace("%1", charging_point_id)
	endpoint = endpoint.replace("%2", str(connector_id))
	endpoint = endpoint.replace("%3", transaction_id)
	url = base_url + endpoint
	print("URL ", url)
	request = requests.get(url, auth=('junction', 'junction2018'))
	print(request.status_code)
	whisperer_backend.addTransaction(transaction_id, car_id, connector_id)

def stop_transaction(charging_point_id, connector_id, car_id, transaction_id):
	print("stop")
	endpoint = start_endpoint.replace("%1", charging_point_id)
	endpoint = endpoint.replace("%2", str(connector_id))
	url = base_url + endpoint
	print("URL ", url)
	request = requests.get(url, auth=('junction', 'junction2018'))
	print(request.status_code)
	whisperer_backend.stopTransaction(transaction_id, car_id)

def provide_charge_percentage(car_id, charge):
	whisperer_backend.updateCharge(car_id, charge)






