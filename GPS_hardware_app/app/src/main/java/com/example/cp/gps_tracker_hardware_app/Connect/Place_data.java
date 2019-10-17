package com.example.cp.gps_tracker_hardware_app.Connect;

public class Place_data {

    public static String latitude;
    public static String longitude;

    public static String getLatitude() {
        return latitude;
    }

    public static String getLongitude() {
        return longitude;
    }

    public static void setLatitude(String latitude) {
        Place_data.latitude = latitude;
    }

    public static void setLongitude(String longitude) {
        Place_data.longitude = longitude;
    }
}

