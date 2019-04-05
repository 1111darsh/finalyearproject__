package com.darsh.paperdisplayusingcardview.Fragment;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.TextView;

import com.darsh.paperdisplayusingcardview.R;

public class MarkFragment extends Fragment {

    String mQuastion;
    String mra;
    String mrd;
    String mrb;
    String mrc;
    int mposition=0;
    public MarkFragment(){

    }
    @SuppressLint("ValidFragment")
    public MarkFragment(int position,String Quastion,String ra,String rb, String rc, String rd){
        mposition=position;
        mQuastion=Quastion;
        mra=ra;
        mrb=rb;
        mrc=rc;
        mrd=rd;
    }
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        View view= inflater.inflate(R.layout.fragment_mark,container,false);
        TextView textView= view.findViewById(R.id.Qid);

        TextView tQuastion = view.findViewById(R.id.Quastion);
        RadioButton ra =  view.findViewById(R.id.a);
        RadioButton rb =  view.findViewById(R.id.b);
        RadioButton rc =  view.findViewById(R.id.c);
        RadioButton rd =  view.findViewById(R.id.d);

        textView.setText(Integer.toString(mposition+1));
        tQuastion.setText(mQuastion);
        ra.setText(mra);
        rb.setText(mrb);
        rc.setText(mrc);
        rd.setText(mrd);
        return view;
    }
}
