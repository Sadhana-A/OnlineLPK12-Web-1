<%@page import="com.lpk12.onlineSystem.lessonStatus" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table {
font-family: arial, sans-serif;
border-collapse: collapse;
width: 100%;
}



td, th {
border: 1px solid #dddddd;
text-align: left;
padding: 8px;
}



tr:nth-child(even) {
background-color: #dddddd;
}
</style>
</head>
<body>
 
<h2>Student's Progress Table</h2>
<p id="student-id"></p>
<p id="progressID"> </p>

<script>
window.onload = function(){
	
	//lessonStatus status=new lessonStatus();
	//String progress=status.getLessonStatusByStudentID();
	
	let progressID='<%= lessonStatus.getLessonStatusByStudentID() %>'; 
	console.log(progressID);
	alert(JSON.parse(progressID));
    document.getElementById('progressID').innerHTML = progressID;
	let studentId = localStorage.getItem('studentId');
	document.getElementById('student-id').innerHTML = studentId;
	}

</script>

</body>
</html>