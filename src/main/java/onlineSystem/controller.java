package onlineSystem;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;


@SuppressWarnings("unused")
public class controller {
	 

    public static void main(String[] args) throws IOException {
        
        try {
            //getApiRequest();
        	POSTRequest();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        
   

    }
    
    public static void getApiRequest() throws IOException {
        
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
            //String data = jsonResponseData.toString();
            //JSONObject json = new JSONObject(data);       
    
            //String status = (String) json.get("status");
           // int id = Integer.parseInt(json.getString("id"));

            //System.out.println( "STATUS: " + status);
            //System.out.println( "ID: " + id);
        
        } else {
            System.out.println(responseCode);
        }

    }


    
    
    public static void POSTRequest() throws IOException {



        final String POST_PARAMS = "\r\n"
        		+ "{\r\n"
        		+ "\r\n"
        		+ "    \"name\": \"morpheus\",\r\n"
        		+ "\r\n"
        		+ "    \"job\": \"leader\"\r\n"
        		+ "\r\n"
        		+ "}";
        System.out.println(POST_PARAMS);
        URL obj = new URL("https://reqres.in/api/users");
        HttpURLConnection postConnection = (HttpURLConnection) obj.openConnection();
        postConnection.setRequestMethod("POST");
        postConnection.setRequestProperty("userId", "a1bcdefgh");
        postConnection.setRequestProperty("Content-Type", "application/json");


        postConnection.setDoOutput(true);
        OutputStream os = postConnection.getOutputStream();
        os.write(POST_PARAMS.getBytes());
        os.flush();
        os.close();


        int responseCode = postConnection.getResponseCode();
        System.out.println("POST Response Code :  " + responseCode);
        System.out.println("POST Response Message : " + postConnection.getResponseMessage());

        if (responseCode == HttpURLConnection.HTTP_CREATED) { //success
            BufferedReader in = new BufferedReader(new InputStreamReader(
                postConnection.getInputStream()));
            String inputLine;
            StringBuffer response = new StringBuffer();

            while ((inputLine = in .readLine()) != null) {
                response.append(inputLine);
            } in .close();

            // print result
            System.out.println(response.toString());
        } else {
            System.out.println("POST NOT WORKED");
        }
    }
    
    
    
}