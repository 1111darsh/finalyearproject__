package com.darsh.paperdisplayusingcardview.Activity;


import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.Toast;


import com.darsh.paperdisplayusingcardview.Adaptor.Url;
import com.darsh.paperdisplayusingcardview.R;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;



public class SelectSubject extends AppCompatActivity {

    int Array_Count = 0;
    Url u = new Url(); //This is a class in adapter for set ip
    public String url;//"http://192.168.43.95/SmartExamination/login.php";
    OkHttpClient client = new OkHttpClient();
    JSONObject json;
    LinearLayout my_layout;
    private ProgressDialog pDialog;
    ArrayList<String> arrayList;

    public static final String TAG="null";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_select_subject);
        url = u.getUrl() + "/SmartExamination/getsubjectlist.php";
        new GetContacts().execute();



    }
    private class GetContacts extends AsyncTask<Void, Void, Void> {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // Showing progress dialog
            pDialog = new ProgressDialog(SelectSubject.this);
            pDialog.setMessage("Please wait...");
            pDialog.setCancelable(false);
            pDialog.show();


        }

        @Override
        protected Void doInBackground(Void... voids) {
            Request request = new Request.Builder()
                    .url(url)
                    .build();


            Log.d(TAG, "doInBackground: "+request);
            client.newCall(request).enqueue(new Callback() {
                @Override
                public void onFailure(Call call, IOException e) {
                    Log.d(TAG, "IOException" + e);
                }

                @Override
                public void onResponse(Call call, final Response response) throws IOException {

                    String responseData = response.body().string();
                    Log.d(TAG, "onResponse: " + responseData);
                    try {
                        json = new JSONObject(responseData);
                        JSONArray subject = json.getJSONArray("Subject");
                        arrayList = new ArrayList<String>();
                        for (int i = 0; i < subject.length(); i++) {
                            arrayList.add(subject.getString(i));
                        }
                        Array_Count = subject.length();
                        Log.d(TAG, "onResponse: array"+Array_Count);

                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    //Toast.makeText(getApplicationContext(),responseData,Toast.LENGTH_SHORT).show();

                }
            });


            return null;
        }

        @Override
        protected void onPostExecute(Void result) {
            super.onPostExecute(result);
            // Dismiss the progress dialog


            if (pDialog.isShowing()) {
                pDialog.dismiss();
                my_layout = (LinearLayout) findViewById(R.id.list_item);


                for (int i = 0; i < Array_Count; i++) {
                    CheckBox checkBox = new CheckBox(SelectSubject.this);
                    checkBox.setId(i);
                    checkBox.setText(arrayList.get(i));
                    my_layout.addView(checkBox);
                }
                Button button = new Button(SelectSubject.this);
                button.setText("submit");
                my_layout.addView(button);


                button.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        boolean flag = false;
                        JSONArray array = new JSONArray();

                        for (int i = 0; i < Array_Count; i++) {
                            CheckBox checkBox = findViewById(i);

                            if (checkBox.isChecked()) {
                                flag = true;
                                array.put(checkBox.getText().toString());
                            }
                        }
                        if (flag == true) {
                            Intent intent = new Intent(SelectSubject.this, DownloadPaper.class);

                            String a = array.toString();
                            Log.d("jo", " " + a);
                            intent.putExtra("arr", a);
                            startActivity(intent);
                        } else {
                            Toast.makeText(getApplicationContext(), "Please select subjects", Toast.LENGTH_SHORT).show();
                        }


                    }
                });

            }


        }
    }

}

