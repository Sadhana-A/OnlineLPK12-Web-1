package onlineSystem;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;


@SuppressWarnings("unused")
public class controller {
	 

    public static void main(String[] args) throws JSONException {
        
        try {
            getApiRequest();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
    
    public static void getApiRequest() throws IOException, JSONException {
        
        // Get 10th record data
    	
        URL getUrl = new URL("https://onlinelpk12.azurewebsites.net/api/studentprogress");
        
        HttpURLConnection conection = (HttpURLConnection) getUrl.openConnection();
        
        // Set request method
        conection.setRequestMethod("GET");

        // Getting response code
        int responseCode = conection.getResponseCode();

        // If responseCode is 200 means we get data successfully
        if (responseCode == HttpURLConnection.HTTP_OK) {
            BufferedReader in = new BufferedReader(new InputStreamReader(conection.getInputStream()));
            StringBuffer jsonResponseData = new StringBuffer();
            String readLine = null;
            
            // Append response line by line
            while ((readLine = in.readLine()) != null) {
                jsonResponseData.append(readLine);
            } 
            
            in.close();
            // Print result in string format
            System.out.println("JSON String Data " + jsonResponseData.toString());
            String data = jsonResponseData.toString();
            JSONObject json = new JSONObject(data);       
    
            String status = (String) json.get("status");
           // int id = Integer.parseInt(json.getString("id"));

            System.out.println( "STATUS: " + status);
            //System.out.println( "ID: " + id);
        
        } else {
            System.out.println(responseCode);
        }

    }

}