<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Progress</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div style="width:80%;margin:2% 10%">
<div style="text-align:center">
<h4>Student Progress on lessons</h4>
<h5>Student Name: John Smith</h5>
<h5>Student ID: P98474</h5>
</div>
<div>
<a class="btn btn-primary" href='progress.jsp' style="margin-bottom:20px">Go To All Students Progress</a>
</div>
<table class="table table-sm table-bordered table-hover" >
<tr style='background-color:#275E9B;color:white'>
<th> Lesson Number </th> <th> Lesson Name </th> <th> Lesson Progress </th> <th>Quiz Progress</th>
</tr>
<tr><td>1</td><td>Lesson 1</td><td>Completed</td><td>In Progress</td></tr>
<tr><td>2</td><td>Lesson 2</td><td>Not Started</td><td>Not Started</td></tr>
<tr><td>3</td><td>Lesson 3</td><td>Not Started</td><td>Not Started</td></tr>
</table>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
