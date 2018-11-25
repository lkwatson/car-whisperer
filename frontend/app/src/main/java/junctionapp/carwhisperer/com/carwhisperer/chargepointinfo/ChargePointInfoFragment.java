package junctionapp.carwhisperer.com.carwhisperer.chargepointinfo;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import butterknife.ButterKnife;
import butterknife.Unbinder;
import junctionapp.carwhisperer.com.carwhisperer.ProgressSpinner;
import junctionapp.carwhisperer.com.carwhisperer.R;
import junctionapp.carwhisperer.com.carwhisperer.database.WhisperDatabase;
import junctionapp.carwhisperer.com.carwhisperer.networking.EnstoNetworker;

public class ChargePointInfoFragment extends Fragment {
    private Unbinder unbinder;
    private String carID;
    private WhisperDatabase whisperDatabase;
    private ProgressSpinner progressSpinner;
    private EnstoNetworker enstoNetworker;


    @Override
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        whisperDatabase = new WhisperDatabase();
        progressSpinner = new ProgressSpinner();
        enstoNetworker = new EnstoNetworker();
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.landing, container, false);
        unbinder = ButterKnife.bind(this, view);
        setupView();
        return view;
    }

    private void setupView() {

    }

}
