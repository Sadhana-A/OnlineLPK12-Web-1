package com.lpk12.onlineSystem;
import org.json.JSONException;
import org.json.JSONObject;


public  class lessonStatus {
	
	public static String getLessonStatusByStudentID() {
	
	//return "{\"studentId\":\"R1234\",\"lessons\":[{\"id\":1,\"name\":\"Lesson 1\",\"status\":\"In Progress\"},{\"id\":2,\"name\":\"Lesson 2\",\"status\":\"Not Started\"}]}";
		//return "{\'studentId\':\'R1234\'}";
		
		String json = "";
			
		    try {
				 json = new JSONObject().put("foo", "bar").toString();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    return json;

}
}