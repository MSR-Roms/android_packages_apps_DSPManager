package com.bel.android.dspmanager.activity; /// change this package to yourselves.

import com.bel.android.dspmanager.R;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.support.v4.view.PagerTabStrip;
import android.util.AttributeSet;

public class MyPagerTabStrip extends PagerTabStrip
{
    public MyPagerTabStrip(Context context, AttributeSet attrs)
    {
    super(context, attrs);
    final TypedArray a = context.obtainStyledAttributes(attrs,
                                  R.styleable.MyPagerTabStrip);
    setTabIndicatorColor(a.getColor(
            R.styleable.MyPagerTabStrip_indicatorColor, Color.WHITE));
    a.recycle();
    }

}