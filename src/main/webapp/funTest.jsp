<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.sony.test.showCode"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<script>
        <%String str= showCode.toLower("HELLO"); %>
        var s="<%=str%>";
        alert(s);
      
    </script>
<body>
Hey Sony ! <%= showCode.toLower("HELLO") %>
</body>
</html>