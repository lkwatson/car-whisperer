package junctionapp.carwhisperer.com.carwhisperer.landing;

import android.Manifest;
import android.app.Activity;
import android.content.pm.PackageManager;
import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.gson.Gson;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import junctionapp.carwhisperer.com.carwhisperer.MainActivity;
import junctionapp.carwhisperer.com.carwhisperer.ProgressSpinner;
import junctionapp.carwhisperer.com.carwhisperer.R;
import junctionapp.carwhisperer.com.carwhisperer.database.DatabaseCallback;
import junctionapp.carwhisperer.com.carwhisperer.database.WhisperDatabase;
import junctionapp.carwhisperer.com.carwhisperer.model.ChargePointGroup;
import junctionapp.carwhisperer.com.carwhisperer.model.ChargingPoint;
import junctionapp.carwhisperer.com.carwhisperer.model.Connector;
import junctionapp.carwhisperer.com.carwhisperer.model.PriceData;
import junctionapp.carwhisperer.com.carwhisperer.networking.EnstoNetworker;
import junctionapp.carwhisperer.com.carwhisperer.networking.PriceNetworker;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import timber.log.Timber;

public class LandingFragment extends Fragment {
    @BindView(R.id.car_id)
    TextView carIdText;
    @BindView(R.id.station_name)
    TextView stationName;
    @BindView(R.id.available_chargers)
    TextView availableChargers;
    @BindView(R.id.charger_distance)
    TextView distanceTo;
    @BindView(R.id.charge_progress)
    ProgressBar chargeProgress;
    @BindView(R.id.charging_status_tv)
    TextView chargeStatus;
    @BindView(R.id.electricity_price)
    TextView electricityPrice;

    private Unbinder unbinder;
    private String carID;
    private WhisperDatabase whisperDatabase;
    private ProgressSpinner progressSpinner;
    private EnstoNetworker enstoNetworker;
    private Location location;

    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        whisperDatabase = new WhisperDatabase();
        progressSpinner = new ProgressSpinner();
        enstoNetworker = new EnstoNetworker();
        startLocationUpdate();
        progressSpinner.showMe(getFragmentManager());
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.landing, container, false);
        unbinder = ButterKnife.bind(this, view);
        setupView();
        enstoNetworker.getChargingPoint(new ChargePointGroupCallback());
        return view;
    }

    private void startLocationUpdate() {
        LocationManager lm = (LocationManager) getActivity().getSystemService(getContext().LOCATION_SERVICE);
        if (ActivityCompat.checkSelfPermission(getContext(), Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat
                .checkSelfPermission(getContext(), Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(getActivity(),
                                              new String[]{Manifest.permission.ACCESS_FINE_LOCATION},
                                              333);
            return;
        }
        location = lm.getLastKnownLocation(LocationManager.GPS_PROVIDER);
    }

    private void setupView() {
        if (getArguments() == null) {
            Toast.makeText(getTheActivity(), "Error getting car status", Toast.LENGTH_SHORT).show();
            return;
        }
        carID = getArguments().getString("code");
        carIdText.setText(carID);
        getChargeData(carID);
    }

    private void getChargeData(String carID) {
        whisperDatabase.getChargeData(carID, new ChargeCallback());
    }

    private void updateChargePercentage(long progress) {
        chargeProgress.setProgress((int) progress);
    }

    private class ChargeCallback implements DatabaseCallback {

        @Override
        public void onDataChanged(@NonNull DataSnapshot dataSnapshot) {
            if (!dataSnapshot.hasChildren()) {
                return;
            }
            long charge = (Long) dataSnapshot.child("current_charge").getValue();
            updateChargePercentage(charge);
            String status = (String) dataSnapshot.child("status").getValue();
            updateStatus(status);

        }

        @Override
        public void onError(DatabaseError databaseError) {
            Toast.makeText(getTheActivity(), "Cannot get charge!", Toast.LENGTH_SHORT).show();
        }
    }

    private void updateStatus(String status) {
        chargeStatus.setText(status.toUpperCase());
    }

    private Activity getTheActivity() {
        return getActivity();
    }

    private class ChargePointGroupCallback implements Callback {

        @Override
        public void onFailure(Call call, IOException e) {
            Toast.makeText(getActivity(), "Cannot get charger", Toast.LENGTH_SHORT).show();
        }

        @Override
        public void onResponse(Call call, Response response) throws IOException {
            Timber.d("Received response!");
            if (response.body() == null || response.body().toString() == null) {
                Timber.d("Response is null!");
                return;
            }
            String responseString = response.body().string();
            ChargingPoint cpGroup = new Gson().fromJson(responseString, ChargingPoint.class);
            Timber.d("RECEIVED %s", cpGroup);
            getLocation(cpGroup.id);
            updateView(availableChargers, "Available chargers: " + findAvailableChargers(cpGroup));
            updateView(stationName, "Station name: " + cpGroup.connectors.get(0).chargingPointIdentifier);
        }
    }

    private void updateView(final TextView view, final String text) {
        getActivity().runOnUiThread(new Runnable() {
            @Override
            public void run() {
                view.setText(text);
            }
        });
    }

    private int findAvailableChargers(ChargingPoint chargingPoint) {
        int count = 0;
        for (Connector conn : chargingPoint.connectors) {
            if (conn.status.equals("Available")) {
                count++;
            }
        }
        return count;
    }

    private void getLocation(int id) {
        whisperDatabase.getChargePointLocation(Integer.toString(id), new DatabaseCallback() {
            @Override
            public void onDataChanged(@NonNull DataSnapshot dataSnapshot) {
                Double lat = (Double) dataSnapshot.child("lat").getValue();
                Double lng = (Double) dataSnapshot.child("lng").getValue();
                Timber.d("Latittude %s longitude %s", lat, lng);
                updateView(distanceTo, "Distance to charger: " + calculateDistanceToLocation(lat, lng) + " m");
                getPriceData();
            }

            @Override
            public void onError(DatabaseError databaseError) {

            }
        });
    }

    void getPriceData() {
        PriceNetworker networker = new PriceNetworker();
        long currentTime = Calendar.getInstance().getTimeInMillis();
        Date date = new Date(currentTime);
        String formattedTime = formatTime(date);
        Date date2 = new Date(currentTime - 7200000 * 5);
        String pastTime = formatTime(date2);
        networker.getPriceForTime(pastTime, formattedTime, new PriceCallback());
    }

    private String formatTime(Date currentTime) {
        // YYYY-MM-DDThh:mm:ssZ
        String time = DateFormat.format("yyyy-MM-ddTHH:mm:ssZ", currentTime).toString();
        return time;
    }

    private class PriceCallback implements Callback {

        @Override
        public void onFailure(Call call, IOException e) {
            // TODO: 24/11/2018 HANDLE ERROR
            Timber.e(e);
        }

        @Override
        public void onResponse(Call call, Response response) throws IOException {
            Timber.d("Received response!");
            if (response.body() == null || response.body().toString() == null) {
                Timber.d("Response is null!");
                return;
            }
            String responseString = response.body().string();
            PriceData[] priceData = new Gson().fromJson(responseString, PriceData[].class);
            ArrayList<PriceData> data = removeZeros(priceData);
            progressSpinner.removeMe(getFragmentManager());
            updateView(electricityPrice, "FINGRID pricing: " + data.get(data.size() - 1).value / 10 + " c/kWh");
        }

        private ArrayList<PriceData> removeZeros(PriceData[] priceData) {
            ArrayList<PriceData> filtered = new ArrayList<>();
            for (PriceData data : priceData) {
                if (data.value > 0) filtered.add(data);
            }
            return filtered;
        }
    }


    private double calculateDistanceToLocation(Double lat, Double lng) {
        if (location == null) {
            Toast.makeText(getActivity(), "Cannot get distance", Toast.LENGTH_SHORT).show();
            return 0;
        }
        double lat2 = location.getLatitude();
        double lng2 = location.getLongitude();
        return round(DistanceCalc.distance2(lat, lat2, lng, lng2, 0.0, 0.0), 0);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        unbinder.unbind();
    }

    private double round(double value, int places) {
        if (places < 0) throw new IllegalArgumentException();

        long factor = (long) Math.pow(10, places);
        value = value * factor;
        long tmp = Math.round(value);
        return (double) tmp / factor;
    }
}
