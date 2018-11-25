package junctionapp.carwhisperer.com.carwhisperer;

import android.app.Application;

import timber.log.Timber;

public class CarWhispererApp extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
        Timber.plant(new Timber.DebugTree() {
            //Add the line number to the tag
            @Override
            protected String createStackElementTag(StackTraceElement element) {
                return super.createStackElementTag(element) + ": " + element.getLineNumber();
            }
        });
        Timber.d("TEST TIMBER");
    }
}
