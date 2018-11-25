package junctionapp.carwhisperer.com.carwhisperer;

import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.widget.Toast;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.gson.Gson;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import butterknife.ButterKnife;
import junctionapp.carwhisperer.com.carwhisperer.database.DatabaseCallback;
import junctionapp.carwhisperer.com.carwhisperer.database.WhisperDatabase;
import junctionapp.carwhisperer.com.carwhisperer.landing.LandingFragment;
import junctionapp.carwhisperer.com.carwhisperer.model.ChargePointGroup;
import junctionapp.carwhisperer.com.carwhisperer.model.ChargingPoint;
import junctionapp.carwhisperer.com.carwhisperer.model.PriceData;
import junctionapp.carwhisperer.com.carwhisperer.networking.EnstoNetworker;
import junctionapp.carwhisperer.com.carwhisperer.networking.PriceNetworker;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import timber.log.Timber;

public class MainActivity extends AppCompatActivity {

    private ProgressSpinner progressSpinner;
    private ChargePointGroup cpGroup;
    private float latestPrice;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);
        progressSpinner = new ProgressSpinner();
        ActionBar actionBar = getSupportActionBar();

        actionBar.setElevation(0);
        FragmentManager fragmentManager = getSupportFragmentManager();
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        LandingFragment fragment = new LandingFragment();
        Bundle bundle = new Bundle();
        bundle.putString("code", getIntent().getStringExtra("code"));
        fragment.setArguments(bundle);
        fragmentTransaction.add(R.id.contentView, fragment);
        fragmentTransaction.commit();
    }

    //@OnClick(R.id.get_charge_point_loc)
    void onGetLocationClicked() {
        WhisperDatabase whisperDatabase = new WhisperDatabase();
        if (cpGroup == null) {
            Toast.makeText(this, "Charge point not defined!", Toast.LENGTH_SHORT).show();
            return;
        }
        progressSpinner.showMe(getSupportFragmentManager());
        ChargingPoint pointToGet = cpGroup.chargingPoints.get(0);
        whisperDatabase.getChargePointLocation(Integer.toString(pointToGet.id), new LocationCallback());
    }

    //@OnClick(R.id.get_charge_group)
    void onGetChargePointGroupClicked() {
        EnstoNetworker networker = new EnstoNetworker();
        networker.getChargingPoint( new CPGroupCallback());
        progressSpinner.showMe(getSupportFragmentManager());
    }

    //@OnClick(R.id.get_price_data)
    void onGetPriceDataClicked() {
        PriceNetworker networker = new PriceNetworker();

        long currentTime = Calendar.getInstance().getTimeInMillis();
        Date date = new Date(currentTime);
        String formattedTime = formatTime(date);
        Date date2 = new Date(currentTime - 7200000 * 5);
        String pastTime = formatTime(date2);
        networker.getPriceForTime(pastTime, formattedTime, new PriceCallback());
        progressSpinner.showMe(getSupportFragmentManager());

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
            closeProgressIndicator();
            setPrice(data.get(data.size() - 1).value);
        }
    }


    private class CPGroupCallback implements Callback {

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
            cpGroup = new Gson().fromJson(responseString, ChargePointGroup.class);
            Timber.d("RECEIVED %s", cpGroup);
            closeProgressIndicator();
        }
    }


    private void setPrice(final float value) {
        latestPrice = value / 10;
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                Toast.makeText(MainActivity.this, "Latest price " + value / 10, Toast.LENGTH_SHORT)
                     .show();
            }
        });
    }

    private ArrayList<PriceData> removeZeros(PriceData[] priceData) {
        ArrayList<PriceData> filtered = new ArrayList<>();
        for (PriceData data : priceData) {
            if (data.value > 0) filtered.add(data);
        }
        return filtered;
    }

    private class LocationCallback implements DatabaseCallback {

        @Override
        public void onDataChanged(DataSnapshot dataSnapshot) {
            closeProgressIndicator();
            //ChargingPointWhispererDb customCP = dataSnapshot.getValue(ChargingPointWhispererDb.class);
            Double lat = (Double) dataSnapshot.child("lat").getValue();
            Double lng = (Double) dataSnapshot.child("lng").getValue();
            String keyy = (String) dataSnapshot.getKey();
            Timber.d("Latittude %s longitude %s key %s", lat, lng, keyy);
        }

        @Override
        public void onError(DatabaseError databaseError) {
            closeProgressIndicator();
            // TODO: 24/11/2018 Handle

        }
    }

    private void closeProgressIndicator() {
        progressSpinner.removeMe(getSupportFragmentManager());
    }
}
