package junctionapp.carwhisperer.com.carwhisperer.onboarding;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.widget.Button;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import junctionapp.carwhisperer.com.carwhisperer.MainActivity;
import junctionapp.carwhisperer.com.carwhisperer.R;

public class OnboardingActivity extends Activity {

    @BindView(R.id.scan_qr_button)
    Button scanQrButton;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.onboarding);
        ButterKnife.bind(this);
    }


    @OnClick(R.id.scan_qr_button)
    protected void onClickScanQr() {
        startActivityForResult(new Intent(this, ScannerActivity.class), 1);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (data == null) {
            return;
        }
        String result = data.getStringExtra("code");
        Intent intent = new Intent(this, MainActivity.class);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
        intent.putExtra("code", result);
        startActivity(intent);

    }
}
