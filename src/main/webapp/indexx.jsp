<%@page import="com.sony.test.showCode" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
if(request.getParameter("btn_check")!=null)
{
showCode sc=new showCode();
String validate=sc.check();
if(validate.equals("hey! You are in java class")){
request.setAttribute("successmsg",validate);
RequestDispatcher rd=request.getRequestDispatcher("calltest.jsp");
rd.forward(request,response);
}
}
%>
<input type="submit" name="btn_check" class="btn btn-success" value="check">
</body>
</html>

