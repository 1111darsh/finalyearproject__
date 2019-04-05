package com.darsh.paperdisplayusingcardview.Activity;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

import com.darsh.paperdisplayusingcardview.Adaptor.PaperDBHelper;
import com.darsh.paperdisplayusingcardview.Fragment.MarkFragment;
import com.darsh.paperdisplayusingcardview.R;
import com.darsh.paperdisplayusingcardview.Fragment.SimpleFragment;

public class MainActivity extends AppCompatActivity {

    public static final String TAG="null";
    PaperDBHelper dbHelper=new PaperDBHelper(this);
    SQLiteDatabase db;
    Button buttonMark, buttonPrevious,buttonNext;
    boolean mark=false;
    Fragment fragment;
    Cursor cursor;
    String Question;
    String a;
    String b;
    String c;
    String d;
    public static int questionno=0;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        buttonPrevious =findViewById(R.id.button_previous);
        buttonNext=findViewById(R.id.button_Next);
        buttonMark=findViewById(R.id.button_Mark);

        db=dbHelper.getReadableDatabase();
        //String Projaction[]={"QuestionNo","Question","A","B","C","D","StudANS","Qid","ANS"};
        String Projaction[]={"QuestionNo","Question","A","B","C","D","ANS"};
        cursor=db.query("paper",Projaction,null,null,null,null,null);
        Log.d(TAG, "onCreate: "+questionno);
        cursor.moveToPosition(questionno);
        Question=cursor.getString(1);
        a=cursor.getString(2);
        b=cursor.getString(3);
        c=cursor.getString(4);
        d=cursor.getString(5);

        fragment = new SimpleFragment(questionno,Question,a,b,c,d);

        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,fragment).commit();

        buttonMark.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(mark==false){
                    mark=true;
                fragment = new MarkFragment(questionno,Question,a,b,c,d);
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,fragment).commit();
                }
                else {
                    mark=false;
                    fragment = new SimpleFragment(questionno,Question,a,b,c,d);

                    getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,fragment).commit();
                }
            }
        });
        buttonNext.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(questionno==4){
                    Toast.makeText(getApplicationContext(),"This is last Question",Toast.LENGTH_SHORT).show();
                }
                else {
                    questionno++;
                    cursor.moveToPosition(questionno);
                    Question = cursor.getString(1);
                    a = cursor.getString(2);
                    b = cursor.getString(3);
                    c = cursor.getString(4);
                    d = cursor.getString(5);
                    fragment = new SimpleFragment(questionno, Question, a, b, c, d);
                    getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, fragment).commit();
                }
            }
        });
        buttonPrevious.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(questionno==0){
                    Toast.makeText(getApplicationContext(),"This is first Question",Toast.LENGTH_SHORT).show();
                }
                else {
                questionno--;
                    cursor.moveToPosition(questionno);
                    Question=cursor.getString(1);
                    a=cursor.getString(2);
                    b=cursor.getString(3);
                    c=cursor.getString(4);
                    d=cursor.getString(5);
                fragment = new SimpleFragment(questionno,Question,a,b,c,d);
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,fragment).commit();
                }
                }
        });


    }

    @Override
    public void onBackPressed() {
        Toast.makeText(getApplicationContext(),"no back", Toast.LENGTH_SHORT).show();
    }
}
