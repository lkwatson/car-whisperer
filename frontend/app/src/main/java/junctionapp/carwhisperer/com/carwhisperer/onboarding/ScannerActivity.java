package junctionapp.carwhisperer.com.carwhisperer.onboarding;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;

import com.google.zxing.Result;

import junctionapp.carwhisperer.com.carwhisperer.ProgressSpinner;
import me.dm7.barcodescanner.zxing.ZXingScannerView;
import timber.log.Timber;

public class ScannerActivity extends FragmentActivity implements ZXingScannerView.ResultHandler {

    private ZXingScannerView scannerView;
    private ProgressSpinner progressSpinner;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        scannerView = new ZXingScannerView(this);
        setContentView(scannerView);
        progressSpinner = new ProgressSpinner();
    }

    @Override
    public void onResume() {
        super.onResume();
        checkPermission();
    }

    private void checkPermission() {
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.CAMERA)
                != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(this,
                                              new String[]{Manifest.permission.CAMERA},
                                              333);
        } else {
            startCamera();
        }
    }

    private void startCamera() {
        scannerView.setResultHandler(this);
        scannerView.startCamera();
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (grantResults.length > 0
                && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            startCamera();
        } else {
            checkPermission();
        }
    }

    @Override
    protected void onPause() {
        super.onPause();
        scannerView.stopCamera();
    }

    @Override
    public void handleResult(Result result) {
        Timber.d("RESULT %s", result.getText()); // Prints scan results
        // If you would like to resume scanning, call this method below:
        progressSpinner.showMe(getSupportFragmentManager());
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        closeActivity(result.getText());
    }

    private void closeActivity(String text) {
        Intent intent = new Intent();
        intent.putExtra("code", text);
        setResult(Activity.RESULT_OK, intent);
        closeProgressIndicator();
        finish();

    }

    private void closeProgressIndicator() {
        progressSpinner.removeMe(getSupportFragmentManager());
    }

}
