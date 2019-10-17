package com.example.cp.gps_tracker_hardware_app.Connect;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

import org.json.JSONObject;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import cz.msebera.android.httpclient.HttpResponse;
import cz.msebera.android.httpclient.HttpStatus;
import cz.msebera.android.httpclient.StatusLine;
import cz.msebera.android.httpclient.client.HttpClient;
import cz.msebera.android.httpclient.client.methods.HttpGet;
import cz.msebera.android.httpclient.impl.client.DefaultHttpClient;

public class ConnectionM {

    public static String serverUrl="http://my-demo.in/parentchild_service/Service1.svc/";

    public static boolean checkNetworkAvailable(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return false;
        }
    }


    public boolean PlaceDetails() {
        try {

            final String TAG_lat = "lat";
            final String TAG_lon = "lon";
            StringBuilder result = new StringBuilder();

            String url = String.format(serverUrl+"getLocation");

            HttpClient httpclient = new DefaultHttpClient();
            HttpResponse response = httpclient.execute(new HttpGet(url));
            StatusLine statusLine = response.getStatusLine();
            if (statusLine.getStatusCode() == HttpStatus.SC_OK) {

                InputStream in = new BufferedInputStream(response.getEntity().getContent());
                BufferedReader br = new BufferedReader(new InputStreamReader(in));
                String line;
                while ((line = br.readLine()) != null) {
                    result.append(line);
                }

                JSONObject jobj = new JSONObject(result.toString());
                String msg = jobj.getString(TAG_lat);
                String msg2 = jobj.getString(TAG_lon);

                if (!msg.equals("null")) {
                    Place_data.setLatitude(msg);
                    Place_data.setLongitude(msg2);
                    return true;
                } else {
                    return false;
                }
            } else {

                response.getEntity().getContent().close();
                throw new IOException(statusLine.getReasonPhrase());
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public int updateAlarm()
    {
        try {
            StringBuilder result = new StringBuilder();
            String url = String.format(serverUrl + "/updateSwitch");
            HttpClient httpclient = new DefaultHttpClient();
            HttpResponse response = httpclient.execute(new HttpGet(url));
            StatusLine statusLine = response.getStatusLine();
            if (statusLine.getStatusCode() == HttpStatus.SC_OK) {

                InputStream in = new BufferedInputStream(response.getEntity().getContent());
                BufferedReader br = new BufferedReader(new InputStreamReader(in));
                String line;
                while ((line = br.readLine()) != null) {
                    result.append(line);
                }
                JSONObject jobj = new JSONObject(result.toString());
                String msg = jobj.getString("msg");
                if (msg.equals("updated")) {
                    return 1;
                } else {
                    return 2;
                }
            } else {
                response.getEntity().getContent().close();
                throw new IOException(statusLine.getReasonPhrase());
            }
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }



}
