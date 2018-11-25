package junctionapp.carwhisperer.com.carwhisperer.database;

import android.support.annotation.NonNull;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.Query;
import com.google.firebase.database.ValueEventListener;

public class WhisperDatabase {
    private final DatabaseReference databaseReference;

    public WhisperDatabase() {
        databaseReference = FirebaseDatabase.getInstance().getReference();
    }

    public void getChargePointLocation(String id, final DatabaseCallback listener) {
        Query query = databaseReference.child("charge_point").child(id);
        query.addListenerForSingleValueEvent(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                listener.onDataChanged(dataSnapshot);
            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {
                listener.onError(databaseError);
            }
        });
    }

    public void getChargeData(String carId, final DatabaseCallback listener) {
        Query query = databaseReference.child("cars").child(carId);
        query.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                listener.onDataChanged(dataSnapshot);
            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {
                listener.onError(databaseError);
            }
        });

    }
}
