package junctionapp.carwhisperer.com.carwhisperer.networking;

import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;

public class PriceNetworker {
    private OkHttpClient httpClient;
    private final String BASE_URL = "https://api.fingrid.fi/v1/variable/106/events/json?start_time=";
    private final String AUTH_KEY = "x-api-key";
    private final String AUTH_VAL = "KEY_HERE"; // TODO: 25/11/2018 ADD KEY
    public PriceNetworker() {
        httpClient = new OkHttpClient();
    }

    public void getPriceForTime(String startTime, String endTime, Callback callback) {
        //String url = BASE_URL + "2018-11-23T00:00:00Z" + "&end_time=" + "2018-11-23T21:00:00Z";
        String url = BASE_URL + startTime + "&end_time=" + endTime;
        Request request = new Request.Builder()
                .url(url)
                .header(AUTH_KEY, AUTH_VAL)
                .build();
        httpClient.newCall(request).enqueue(callback);
    }



}
