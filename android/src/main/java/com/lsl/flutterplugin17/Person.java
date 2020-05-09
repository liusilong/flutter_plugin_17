package com.lsl.flutterplugin17;

import android.util.Log;

import java.lang.reflect.Method;

/**
 * Created by liusilong on 2020/5/9.
 * version:1.0
 * Describe:
 */
public class Person {
    private static final String TAG = "Person";

    // This method will be called by reflection
    public void personName() {
        Log.e(TAG, "personName: call personName method....");
    }

    public void execute(String methodName) {
        try {
            Method method = Person.class.getDeclaredMethod(methodName);
            method.invoke(Person.this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
