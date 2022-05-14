<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online LPK12 Course</title>
</head>
<body>
<%
String username = request.getParameter("username");
%>
<div class="container pt-5 my-10 bg-primary text-white" style="width:100%">


 <div class="col-sm-3">
  <form action="header.jsp">
  	  <a href="#" id="goBackButton" onclick="history.back()" style="margin-top:25px"><img height="30" width="40" src="back.png" style="margin-top:25px" ></a>
  	  <a href="home.jsp" style="margin-top:25px"><img height="30" width="40" src="home.png" style="margin-top:25px"></a>
      </form>
  </div>


<div class="col-sm-6" style="text-align:center">
     
<h2 id="title"> Welcome to Online LPK12 Course</h2>
</div>

<div class="col-sm-2" style="margin-top:30px">
<span id="userName"></span>
</div>
<div class="col-sm-1">
<a href="login.jsp" style="margin-top:30px" class="btn btn-warning">Logout</a>
</div>
</div>
</body>
<script type="text/javascript">

    document.getElementById("userName").innerHTML=sessionStorage.getItem("username");

</script>
</html>
