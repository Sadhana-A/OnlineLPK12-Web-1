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
 <div class="row" style="border: thin solid black; padding:10px;"> 
 <div class="col-md-5">
<img src ="logo.jpg"  height= "125" width="235" style="float:left;" />
</div>
 <div class="col-md-3">
<h3 style="float:center;">Online LPK12 Course</h3> 
</div>
 <div class="col-md-3">
<h4 style="float:right;"><%= userName %>
<br>
<a style="float:right;" href="logout.jsp">Logout</a></h4>
</div>
</div>

</body>
</html>
