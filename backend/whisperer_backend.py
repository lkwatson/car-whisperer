import firebase_admin
from firebase_admin import credentials
from firebase_admin import db

init_done = False

def init():
	global init_done
	if init_done == True:
		return
	cred = credentials.Certificate("keys.json") # FIREBASE -> PROJECT SETTINGS -> SERVICE ACCOUNTS -> GEN NEW PRIVATE KEY
	firebase_admin.initialize_app(cred, {
		'databaseURL' : 'https://car-whisperer.firebaseio.com/'
	})
	print("Init complete")
	init_done = True

def addTransaction(transaction_id, vehicle_id, connector_id):
	print('Adding transaction')
	root = db.reference().child('transactions')
	root.child(vehicle_id).child('transactions').update({
		transaction_id: {
			'status': 'charging',
			'connector': connector_id
		}
	})

	root = db.reference().child('cars')
	root.child(vehicle_id).update({
		"status": "charging"
	})
	print('Transaction completed')


def stopTransaction(transaction_id, vehicle_id):
	init()
	print('Stopping transaction')
	root = db.reference().child('transactions')
	root.child(vehicle_id).child('transactions').child(transaction_id).update({'status' : "done"})
	root = db.reference().child('cars')
	root.child(vehicle_id).update({
		"status": "done"
	})

def updateCharge(car_id, charge):
	init()
	print('Update charge')
	root = db.reference().child('cars')
	root.child(car_id).update({
		"current_charge": charge
	})

