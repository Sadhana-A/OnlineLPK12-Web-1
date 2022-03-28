<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="javax.net.ssl.HttpsURLConnection"%>
<%@page import="java.net.URL"%>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<style>
.table-styled {
    border-collapse: collapse
}
</style>
<meta charset="UTF-8">
<title>Student Details</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="student-progress-table" style="width:80%;margin:2% 10%;">

</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
<script type="text/javascript">
window.onload = function(){
	
	getApiData();
	console.log("hello");
	
	var response = getApiData();
		
}
function getApiData()
{
	<%	
	String recieve; 
	String buffer = "";
	URL url = new URL("http://jsonplaceholder.typicode.com/posts");
	URLConnection urlcon = url.openConnection();
	BufferedReader buffread = new BufferedReader(new InputStreamReader(urlcon.getInputStream()));
	while ((recieve = buffread.readLine()) != null)
	 buffer += recieve;
	buffread.close();     
	System.out.println(buffer);
	%>
	
	var response = null;
	let apiUrl = "http://jsonplaceholder.typicode.com/posts";
	$.get(apiUrl, function(data, status){
	    response = data;
	    buildStudentProgressTable(data);
	  });
	return response;
}
function buildStudentProgressTable(response){
	let htmlTable = "<table class='table table-sm table-bordered table-hover'>";
    let headerRow = "<tr style='background-color:#275E9B;color:white'>";
    headerRow += "<th>" + "Student ID" + "</th>";
    headerRow += "<th>" + "Name" + "</th>";
    headerRow += "<th>" + "View Progress" + "</th>";
    htmlTable+= headerRow;
    
    for(let i=0; i<100;i++)
    {
    	let row = "";
        row += "<tr>";
        row += '<td>' + response[i].userId + '</td>';
        row += '<td>' + response[i].title + '</td>';
        row += '<td>' + "<a class='btn btn-primary' href='StudentProgressDetail.jsp' taget='_blank'> View Student Progress </a>" + '</td>';        
        row += '</tr>';
        htmlTable += row;
    }
    htmlTable += '</table>';
    
    $('#student-progress-table').html(htmlTable);
}
function showAlert(){
	alert('show some message');
}
</script>
