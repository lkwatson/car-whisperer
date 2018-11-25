package junctionapp.carwhisperer.com.carwhisperer.model;

import android.graphics.ColorSpace;

import java.util.List;

public class ChargingPoint {
    public int id;
    public String chargeBoxSerialNumber;
    public String chargePointModel;
    public String chargePointSerialNumber;
    public String chargePointVendor;
    public boolean permissionCheckEnabled;
    public List<Connector> connectors = null;
    public String identifier;

    public int getId() {
        return id;
    }

    public String getChargeBoxSerialNumber() {
        return chargeBoxSerialNumber;
    }

    public String getChargePointModel() {
        return chargePointModel;
    }

    public String getChargePointSerialNumber() {
        return chargePointSerialNumber;
    }

    public String getChargePointVendor() {
        return chargePointVendor;
    }

    public boolean isPermissionCheckEnabled() {
        return permissionCheckEnabled;
    }

    public List<Connector> getConnectors() {
        return connectors;
    }

    public String getIdentifier() {
        return identifier;
    }
}
