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
a.disabled {
pointer-events: none;
cursor: default;
}
</style>
<meta charset="UTF-8">
<title>Lesson Numbers</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<div id="LessonStyle" style="width:95%;margin:3%">



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
response = '{"studentId":"R1234","lessons":[{"id":1,"name":"Lesson 1","status":"In Progress"},{"id":2,"name":"Lesson 2","status":"Not Started"}]}';
buildLessonList(JSON.parse(response));
});
return response;
}
function buildLessonList(response){
let buildList = "<ul>";

for(let i=0; i<response.lessons.length;i++)
{
let li = "";
let lessonStatus = response.lessons[i].status;
li += "<li>";
li+="<a href='lesson" + response.lessons[i].id + ".jsp'"
if(lessonStatus == "In Progress")
{
li+="class='disabled'"
}
li+=">" + "Click here to view ";
li+= response.lessons[i].name + "!" + "</a>";
li += " ";
li += response.lessons[i].status;
li += "</li>";
li += "<br/>";
buildList += li;
}
buildList += "</ul>";
$('#LessonStyle').html(buildList);
}
</script>