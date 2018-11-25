package junctionapp.carwhisperer.com.carwhisperer.model;

import java.util.List;

public class ChargePointGroup {
    public List<ChargingPoint> chargingPoints = null;
    public int id;
    public String name;
    public List<Object> children = null;

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public List<Object> getChildren() {
        return children;
    }

    public List<ChargingPoint> getChargingPoints() {
        return chargingPoints;
    }

}