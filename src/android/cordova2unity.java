package com.bravomedia.cordova2unity;

import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

public class cordova2unity extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {

        if (action.equals("launch")) {
            
            
            Context context=cordova.getActivity().getApplicationContext();
            Intent intent=new Intent(context,GameActivity.class);
            
            cordova.getActivity().startActivity(intent);

            return true;

        } else {
            
            return false;

        }
    }
}
