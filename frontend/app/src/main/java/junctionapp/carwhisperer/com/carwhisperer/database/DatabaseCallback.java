package junctionapp.carwhisperer.com.carwhisperer.database;

import android.support.annotation.NonNull;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;

public interface DatabaseCallback {
    void onDataChanged(@NonNull DataSnapshot dataSnapshot);
    void onError(DatabaseError databaseError);
}
