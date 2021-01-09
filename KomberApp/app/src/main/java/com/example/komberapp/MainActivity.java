package com.example.komberapp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import android.Manifest;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import android.location.Location;
import com.google.android.gms.location.FusedLocationProviderClient;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.tasks.OnSuccessListener;

public class MainActivity extends AppCompatActivity implements SensorEventListener {

    private TextView xText, yText, zText, latText, longText;

    private Button cb;

    private Sensor mySensor;
    private SensorManager SM;

    private float[] eventData;

    public Socket client;
    public boolean connected;
    public static final int SENSOR_FREQ = 30;
    public static final int DATA_SIZE = 5;
    private float latitude, longitude;
    private FusedLocationProviderClient fusedLocationClient;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        SM = (SensorManager) getSystemService(SENSOR_SERVICE);
        mySensor = SM.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
        startSensors();
        xText = (TextView) findViewById(R.id.xText);
        yText = (TextView) findViewById(R.id.yText);
        zText = (TextView) findViewById(R.id.zText);
        latText = (TextView) findViewById(R.id.latText);
        longText = (TextView) findViewById(R.id.longText);

        cb = findViewById(R.id.connect_button);

        eventData = new float[DATA_SIZE];
        connected = false;
        fusedLocationClient = LocationServices.getFusedLocationProviderClient(this);
    }
    public void startSensors() {
        int dt = (int) (1e6 / SENSOR_FREQ);
        SM.registerListener(this, mySensor, dt);
    }
    public void stopSensors() {
        SM.unregisterListener(this);
    }
    public void updateTextView() {
        xText.setText("X: " + String.format("%.02f", eventData[0]));
        yText.setText("Y: " + String.format("%.02f", eventData[1]));
        zText.setText("Z: " + String.format("%.02f", eventData[2]));
        latText.setText("lat: " + String.format("%.02f", eventData[3]));
        longText.setText("long: " + String.format("%.02f", eventData[4]));
    }
    @Override
    protected void onResume() {
        super.onResume();
        startSensors();
    }
    @Override
    protected void onPause() {
        super.onPause();
        stopSensors();
    }
    @Override
    public void onSensorChanged(SensorEvent event) {
        if (event.sensor.getType() == Sensor.TYPE_ACCELEROMETER) {
            if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
                return;
            }
            fusedLocationClient.getLastLocation()
                    .addOnSuccessListener(this, new OnSuccessListener<Location>() {
                        @Override
                        public void onSuccess(Location location) {
                            if (location != null) {
                                latitude = (float) location.getLatitude();
                                longitude = (float) location.getLongitude();
                            }
                        }
                    });
            eventData[0] = event.values[0];
            eventData[1] = event.values[1];
            eventData[2] = event.values[2];
            eventData[3] = latitude;
            eventData[4] = longitude;

            updateTextView();
            if (connected) {
                cb.setText("Started!");
                Thread send_data = new Thread(new SendData());
                send_data.start();
            } else {
                cb.setText("Start");
            }
        }
    }
    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    class StartClient implements Runnable {
        @Override
        public void run() {
            String ip_addr = "192.168.1.6";
            int Port = 31006;
            try {
                client = new Socket(ip_addr, Port);
                connected = true;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    class SendData implements Runnable {
        @Override
        public void run() {
            sendAsBytes();
        }
        void sendAsBytes() {
            try {
                byte byteArray[] = new byte[4 * DATA_SIZE];
                ByteBuffer bbuffer = ByteBuffer.wrap(byteArray);

                FloatBuffer buffer = bbuffer.asFloatBuffer();
                buffer.put(eventData);

                client.getOutputStream().write(byteArray, 0, 4 * DATA_SIZE);
            } catch (IOException e) {
                e.printStackTrace();
                connected=false;
            }
        }
    }
    public void connectToSever(View view) {
        Thread start_client = new Thread(new StartClient());
        start_client.start();
    }
}