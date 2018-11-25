package junctionapp.carwhisperer.com.carwhisperer;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;

import com.github.ybq.android.spinkit.sprite.Sprite;
import com.github.ybq.android.spinkit.style.DoubleBounce;
import com.github.ybq.android.spinkit.style.ThreeBounce;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;

public class ProgressSpinner extends Fragment {
    private final String SPINNER_TAG = "SPINNER";
    private Unbinder unbinder;
    @BindView(R.id.spin_kit_spinner)
    ProgressBar progressBar;

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.progress_spinner, container, false);
        unbinder = ButterKnife.bind(this, view);
        Sprite sprite = new ThreeBounce();
        progressBar.setIndeterminateDrawable(sprite);
        return view;
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        unbinder.unbind();
    }

    public void showMe(FragmentManager supportFragmentManager) {
        supportFragmentManager
                .beginTransaction()
                .replace(android.R.id.content, this, SPINNER_TAG)
                .commit();
    }

    public void removeMe(FragmentManager supportFragmentManager) {
        supportFragmentManager.beginTransaction().remove(this).commit();
    }
}
