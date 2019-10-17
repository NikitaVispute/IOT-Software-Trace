package com.example.cp.gps_tracker_hardware_app;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.example.cp.gps_tracker_hardware_app.Connect.ConnectionM;
import com.example.cp.gps_tracker_hardware_app.Connect.ProgressDialog;

public class Home extends AppCompatActivity {

    Dialog dg;
    int resp;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        Button btnExit = (Button) findViewById(R.id.btnExit);
        btnExit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                exit();
            }
        });


        Button btnView = (Button) findViewById(R.id.btnGetLoc);
        btnView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                getLocation();
            }
        });



    }


    public Handler alarmhd = new Handler() {
        public void handleMessage(Message msg) {
            dg.cancel();
            switch (resp) {
                case 0:
                    Toast.makeText(getApplicationContext(), "Something went wrong", Toast.LENGTH_LONG).show();
                    break;

                case 1:
                    Toast.makeText(getApplicationContext(), "Updated", Toast.LENGTH_LONG).show();
                    break;

                case 2:
                    Toast.makeText(getApplicationContext(), "Try Later!!!", Toast.LENGTH_LONG).show();
                    break;
            }
        }
    };


    @Override
    public void onBackPressed() {
        exit();
    }

    public void exit() {
        new android.support.v7.app.AlertDialog.Builder(Home.this)
                .setIcon(R.drawable.gpstracker)
                .setTitle("")
                .setMessage("Are you sure you want Exit?")
                .setPositiveButton("Yes", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Intent intent = new Intent(Intent.ACTION_MAIN);
                        intent.addCategory(Intent.CATEGORY_HOME);
                        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                        startActivity(intent);
                        finish();
                    }

                })
                .setNegativeButton("No", null)
                .show();
    }

    public void getLocation() {
        final ConnectionM conn = new ConnectionM();
        if (ConnectionM.checkNetworkAvailable(Home.this)) {
            ProgressDialog dialog = new ProgressDialog();
            dg = dialog.createDialog(Home.this);
            dg.show();

            Thread tthread = new Thread() {
                @Override
                public void run() {
                    try {
                        if (conn.PlaceDetails()) {
                            resp = 0;
                        } else {
                            resp = 1;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    hd.sendEmptyMessage(0);

                }
            };
            tthread.start();
        } else {
            Toast.makeText(Home.this, "Sorry no network access.", Toast.LENGTH_LONG).show();
        }
    }

    public Handler hd = new Handler() {
        public void handleMessage(Message msg) {
            dg.cancel();
            switch (resp) {
                case 0:
                    Intent intent = new Intent(Home.this, Map.class);
                    startActivity(intent);
                    break;

                case 1:
                    Toast.makeText(getApplicationContext(), "Not Data Found", Toast.LENGTH_LONG).show();
                    break;
            }
        }
    };

}
