package com.darsh.paperdisplayusingcardview.Fragment;

import android.annotation.SuppressLint;
import android.content.ContentValues;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;

import com.darsh.paperdisplayusingcardview.R;

public class SimpleFragment extends Fragment {



    View view;
    public static final String TAG="null";
    String mQuastion;
    String mra;
    String mrd;
    String mrb;
    String mrc;
    int mposition=0;
    public SimpleFragment() {

    }

    @SuppressLint("ValidFragment")
    public SimpleFragment(int position,String Quastion,String ra,String rb, String rc, String rd){
        mposition=position;
        mQuastion=Quastion;
        mra=ra;
        mrb=rb;
        mrc=rc;
        mrd=rd;

    }


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

    @Override
    public View onCreateView(@NonNull final LayoutInflater inflater, @Nullable final ViewGroup container, @Nullable Bundle savedInstanceState) {
        view= inflater.inflate(R.layout.fragment_simple,container,false);
        TextView textView= view.findViewById(R.id.Qid);

        TextView tQuastion = view.findViewById(R.id.Quastion);
        RadioButton ra =  view.findViewById(R.id.a);
        RadioButton rb =  view.findViewById(R.id.b);
        RadioButton rc =  view.findViewById(R.id.c);
        RadioButton rd =  view.findViewById(R.id.d);
        RadioGroup radioGroup = view.findViewById(R.id.radioAnswer);


        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(RadioGroup group, int checkedId) {

                ContentValues cv = new ContentValues();
                String userAnswer =((RadioButton)view.findViewById(group.getCheckedRadioButtonId()))
                        .getText().toString();
                cv.put("StudANS", userAnswer);
                if(group.getCheckedRadioButtonId()!=0)
                    //db.update("paper",cv,"Qid="+mposition,null);
                Log.d(TAG, "onCreate: "+group.getCheckedRadioButtonId()+ "Check id "+checkedId+" User ans : "+userAnswer);

            }
        });

        textView.setText(Integer.toString(mposition+1));
        tQuastion.setText(mQuastion);
        ra.setText(mra);
        rb.setText(mrb);
        rc.setText(mrc);
        rd.setText(mrd);
        return view;
    }
}
