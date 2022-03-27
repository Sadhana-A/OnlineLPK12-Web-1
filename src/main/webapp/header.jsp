<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online LPK12 Course</title>
</head>
<body>
<%
String userName = request.getParameter("userName");
String passWord = request.getParameter("passWord");
%>
<div class="container pt-5 my-10 bg-primary text-white" style="width:100%">
<div class="col-sm-4">
</div>

<div class="col-sm-6">
<h2> Welcome to Online LPK12 Course</h2>
</div>

<div class="col-sm-2">
<h4><%= userName %> </h4>
<br>
<a href="logout.jsp" class="btn btn-warning">Logout</a>
</div>
</div>

</body>
</html>