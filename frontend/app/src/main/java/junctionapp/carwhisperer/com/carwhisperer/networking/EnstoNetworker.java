package junctionapp.carwhisperer.com.carwhisperer.networking;

import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;

public class EnstoNetworker {
    private OkHttpClient httpClient;
    private final String BASE_URL = "https://junctionev.enstoflow.com";
    private final String CP_GROUP_URL = "/api/v1/chargingPoint/junction-7/"; 
    private final String AUTH_VALUE = "KEY_HERE"; // TODO: 25/11/2018 ADD KEY


    public EnstoNetworker() {
        httpClient = new OkHttpClient();
    }

    public void getChargingPoint(Callback callback) {
        String url = BASE_URL + CP_GROUP_URL;
        Request request = new Request.Builder()
                .url(url)
                .header("Authorization", AUTH_VALUE)
                .build();
        httpClient.newCall(request).enqueue(callback);

    }
}
