<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file = "header.jsp" %>
</head>
<body>
<div class="row">
<div class= "col-md-4 center">
<form action="lessonquiz.jsp">
<input type="image" id="image" alt="Lessons" src="lessons.png"  height= "125" width="235" >
<button onclick="lessons.jsp" style="background-color:teal">Lessons</button>
</form>
</div>

<div class= "col-md-4 center">
<form action="progress.jsp">
<input type="image" id="image" alt="Lessons" src="progress.jpg"  height= "125" width="235" >
<button onclick="progress.jsp" style="background-color:teal">Progress</button>
</form>
</div>
</div>

<%-- <%@ include file = "footer.jsp" %> --%>
</body>
</html>