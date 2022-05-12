<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Testing</title>
</head>
<body>
<input type="button">
<div class="row">
<div class="col-md-6">


<textarea id="sparc" name="sparc" rows="100" cols="100">
</textarea>

</div>

<div class="col-md-6">


<textarea id="sparc" name="sparc" rows="100" cols="100">
</textarea>

</div>

</div>



function getApiData()
{
//let userId = sessionStorage.getItem("userId");
let userId = "9";
var response = null;
let apiUrl = "https://onlinelpk12appservice.azurewebsites.net/api/StudentProgress/lessons/"+userId;
$.get(apiUrl, function(data, status){
response = data
buildLessonList(response);
});
return response;
}
</body>
</html>