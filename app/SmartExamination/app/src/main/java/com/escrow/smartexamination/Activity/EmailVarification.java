package com.escrow.smartexamination.Activity;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.escrow.smartexamination.Adapter.Url;
import com.escrow.smartexamination.R;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

import static android.content.ContentValues.TAG;

public class EmailVarification extends AppCompatActivity {
    EditText otp;
    Button verify;
    String email;
    Url u=new Url(); //This is a class in adapter for set ip
    public String url;//"http://192.168.43.95/SmartExamination/login.php";
    JSONObject jo = new JSONObject();
    public static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");


    public String responseData;
    private ProgressDialog pDialog;
    boolean succesful,Emailregisterd;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_email_vavification);

        url=u.getUrl()+"/SmartExamination/otpverify.php";

        Intent intent=getIntent();
        email=intent.getStringExtra("Email");
        otp = (EditText)findViewById(R.id.editeTextotp);
        verify=(Button)findViewById(R.id.buttonVerify);
        verify.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String sotp=otp.getText().toString();
                try {
                    jo.put("Email",email);
                    jo.put("OTP",sotp);

                } catch (JSONException e) {
                    e.printStackTrace();
                }
                new otpverify().execute();
            }
        });



    }
    private class otpverify extends AsyncTask<Void, Void, Void> {

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            // Showing progress dialog
            pDialog = new ProgressDialog(EmailVarification.this);
            pDialog.setMessage("Please wait...");
            pDialog.setCancelable(false);
            pDialog.show();



        }

        @Override
        protected Void doInBackground(Void... arg0) {
            /**This is using okHttp **/
            OkHttpClient client = new OkHttpClient();
            Log.d(TAG, "request: "+jo);

            RequestBody body = RequestBody.create(JSON, String.valueOf(jo));

            Request request = new Request.Builder()
                    .url(url).post(body)
                    .build();

            Log.d(TAG, "body"+body);
            Log.d(TAG, "request "+request);
            client.newCall(request).enqueue(new Callback() {
                @Override
                public void onFailure(Call call, IOException e) {
                    Log.d(TAG, "IOException"+e);
                }

                @Override
                public void onResponse(Call call, final Response response) throws IOException {

                    responseData = response.body().string();
                    try {
                        JSONObject responce=new JSONObject(responseData);
                        succesful=responce.getBoolean("succesful");
                        Emailregisterd=responce.getBoolean("Emailregisterd");
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }


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


                Log.d(TAG, "onResponsepe: "+responseData);
                //String s = responseData.trim().toString();
                //Toast.makeText(EmailVarification.this,""+responseData, Toast.LENGTH_SHORT).show();
                if(succesful==true)
                {
                    Intent paper = new Intent(EmailVarification.this, CreateFaceId.class);
                    Toast.makeText(getApplicationContext(),"otp verified",Toast.LENGTH_SHORT).show();
                    startActivity(paper);

                }
                else {
                    Toast.makeText(getApplicationContext(),"wrong otp",Toast.LENGTH_SHORT).show();

                }
            }


        }

    }
}
