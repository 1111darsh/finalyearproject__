package com.escrow.smartexamination.Activity;

import android.content.Intent;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ProgressBar;

import com.escrow.smartexamination.R;

public class RecognizeFaceID extends AppCompatActivity {

    private int progressStatus = 0;

    ProgressBar progressBar;
    private Handler handler = new Handler();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_recognize_face_id);
        progressBar = (ProgressBar) findViewById(R.id.progressBar);

        new Thread(new Runnable() {
            @Override
            public void run() {
                while (progressStatus < 100) {

                    progressStatus += 1;


                    handler.post(new Runnable() {
                        public void run() {
                            progressBar.setProgress(progressStatus);
                        }
                    });
                    try {
                        // Sleep for 200 milliseconds.
                        Thread.sleep(10);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                if (progressStatus == 100) {
                    startActivity(new Intent(RecognizeFaceID.this, DownloadPaper.class));
                }
            }
        }).start();

    }
}
