package junctionapp.carwhisperer.com.carwhisperer.model;

public class Connector {
    public int id;
    public String chargingPointIdentifier;
    public int connectorId;
    public String status;
    public long lastUpdate;
    public long transactionId;
    public String idTag;
    public long transactionStart;
    public int meterStart;

    public int getId() {
        return id;
    }

    public String getChargingPointIdentifier() {
        return chargingPointIdentifier;
    }

    public int getConnectorId() {
        return connectorId;
    }

    public String getStatus() {
        return status;
    }

    public long getLastUpdate() {
        return lastUpdate;
    }

    public long getTransactionId() {
        return transactionId;
    }

    public String getIdTag() {
        return idTag;
    }

    public long getTransactionStart() {
        return transactionStart;
    }

    public int getMeterStart() {
        return meterStart;
    }


}
