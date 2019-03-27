package com.hand.toast;

import android.widget.Toast;

import org.apache.cordova.CallbackContext;
import org.apache.cordova.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;

import java.util.Random;

public class LoexKLinePlugin extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {


        if ("showKLine".equals(action)) {
            String str = args.getString(0);

            cordova.getActivity().runOnUiThread(new Runnable() {
                public void run() {
                    //TODO
                    Toast.makeText(cordova.getActivity(), str, Toast.LENGTH_LONG).show();
                    callbackContext.success();
                };
            });



            return true;
        } else if ("toastWithCallback".equals(action)) {
            String str = args.getString(0);

            cordova.getActivity().runOnUiThread(new Runnable() {
                public void run() {
                    //TODO
                    Toast.makeText(cordova.getActivity(), str, Toast.LENGTH_LONG).show();
                    callbackContext.success();
                };
            });


            //为体现成功／失败两种回调，这里使用Random生成随机数，随机数为true时回调成功function，为false时回调失败function，
            Random random = new Random();
            if (random.nextBoolean()) {
                callbackContext.success("execute_callack_success");
            } else {
                callbackContext.error("execute_callack_error");
            }
            return true;
        }
        return super.execute(action, args, callbackContext);


    }
}
