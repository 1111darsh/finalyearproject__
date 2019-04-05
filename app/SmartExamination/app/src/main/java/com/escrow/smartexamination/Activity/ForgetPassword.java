package com.escrow.smartexamination.Activity;

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

public class ForgetPassword extends AppCompatActivity {
    EditText otp,pass,repass,email;
    Button sandotp, setnewpass;
    String em;
    Url u=new Url(); //This is a class in adapter for set ip
    public String url;//"http://192.168.43.95/SmartExamination/login.php";
    JSONObject jo = new JSONObject();
    public static final MediaType JSON = MediaType.parse("application/json; charset=utf-8");
    OkHttpClient client=new OkHttpClient();



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_forget_password);



        url=u.getUrl()+"/SmartExamination/Resandotp.php";
        otp=(EditText)findViewById(R.id.editeTextotp);
        pass=(EditText)findViewById(R.id.editTextnewpassword);
        repass=(EditText)findViewById(R.id.editeTextrenewpassword);
        setnewpass =(Button)findViewById(R.id.buttonsetpass);
        email=(EditText)findViewById(R.id.editeTextemail);
        sandotp=(Button)findViewById(R.id.buttonsandotp);

    }

    @Override
    protected void onStart() {
        super.onStart();
        otp.setVisibility(View.INVISIBLE);
        pass.setVisibility(View.INVISIBLE);
        repass.setVisibility(View.INVISIBLE);
        setnewpass.setVisibility(View.INVISIBLE);
        sandotp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                boolean isValid = true;
                em=email.getText().toString().trim();
                if (em.isEmpty()) {
                    isValid = false;
                }

                if (isValid) {


                    try {
                        jo.put("Email",em);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }

                }

                RequestBody body = RequestBody.create(JSON, String.valueOf(jo));

                Request request = new Request.Builder()
                        .url(url).post(body)
                        .build();




                client.newCall(request).enqueue(new Callback() {
                    @Override
                    public void onFailure(Call call, IOException e) {
                        Log.d(TAG, "IOException"+e);
                    }

                    @Override
                    public void onResponse(Call call, final Response response) throws IOException {

                        String responseData = response.body().string();
                        Toast.makeText(getApplicationContext(),responseData,Toast.LENGTH_SHORT);

                    }
                });

                otp.setVisibility(View.VISIBLE);
                pass.setVisibility(View.VISIBLE);
                repass.setVisibility(View.VISIBLE);
                setnewpass.setVisibility(View.VISIBLE);
                email.setVisibility(View.INVISIBLE);
                sandotp.setVisibility(View.INVISIBLE);

                url=u.getUrl()+"SmartExamination/Forgotpass.php";
            }
        });

        setnewpass.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                JSONObject jsonObject = new JSONObject();
                String sotp = otp.getText().toString().trim();
                String spass =pass.getText().toString().trim();
                String srepass =repass.getText().toString().trim();
                if(spass.equals(srepass))
                {

                    try {
                        jsonObject.put("Email",em);
                        jsonObject.put("OTP",sotp);
                        jsonObject.put("newpassword",spass);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }

                RequestBody body = RequestBody.create(JSON, String.valueOf(jsonObject));

                Request request = new Request.Builder()
                        .url(url).post(body)
                        .build();


                client.newCall(request).enqueue(new Callback() {
                    @Override
                    public void onFailure(Call call, IOException e) {
                        Log.d(TAG, "IOException"+e);
                    }

                    @Override
                    public void onResponse(Call call, final Response response) throws IOException {

                        String responseData = response.body().string();
                        Toast.makeText(getApplicationContext(),responseData,Toast.LENGTH_SHORT);

                    }
                });

            }
        });



    }
}
