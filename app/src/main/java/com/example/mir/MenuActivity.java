package com.example.mir;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;

import com.example.mir.inkom.R;

public class MenuActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu);

        Button lht_kode = (Button) findViewById(R.id.btn_lihat);

        lht_kode.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent il = new Intent(getApplicationContext(), BeritaUtama.class);
                startActivity(il);
            }
        });

        Button lht_catatan = (Button) findViewById(R.id.btn_catatan);

        lht_catatan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent il = new Intent(getApplicationContext(), AboutActivity.class);
                startActivity(il);
            }
        });
    }
}
