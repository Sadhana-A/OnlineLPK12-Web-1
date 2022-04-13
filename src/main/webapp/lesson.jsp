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
response = '{"studentId":"R1234","lessons":[{"id":1,"name":"Lesson 1","status":"Pass"},{"id":2,"name":"Lesson 2","status":"In Progress"},{"id":3,"name":"Lesson 3","status":"Not Started"},{"id":4,"name":"Lesson 4","status":"Not Started"},{"id":5,"name":"Lesson 5","status":"Not Started"},{"id":6,"name":"Lesson 6","status":"Not Started"},{"id":7,"name":"Lesson 7","status":"Not Started"},{"id":8,"name":"Lesson 8","status":"Not Started"}]}';
buildLessonList(JSON.parse(response));
});
return response;
}
function buildLessonList(response){
let buildList = "<ul>";

for(let i=0; i<response.lessons.length;i++)
{

let k = i;
if (i !=0)
{
k -= 1;
}
let li = "";
let lessonId = response.lessons[i].id;
let prevLessonStatus = response.lessons[k].status;
li += "<li>";
//li+="<a href='lesson" + response.lessons[i].id + ".jsp'"
//li+="<a id='lesson" + response.lessons[i].id + "' href='lesson.jsp'"
if(lessonId == 1)
{
li+="<a href='https://prezi.com/ydwozouw3ysg/build-computer-models-for-stem-problems/?utm_campaign=share&utm_medium=copy'>"
}
else{
li+="<a href='lesson.jsp?lessonNumber=" + response.lessons[i].id
if(lessonId != 1 && prevLessonStatus != "Pass")
{
li+="' class='disabled'"
}
li+="'>"
}
li+= "Click here to view ";
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
document.getElementById('lesson').setAttribute('href', 'lesson.jsp?lessonNumber=' + lessonId);
</script>