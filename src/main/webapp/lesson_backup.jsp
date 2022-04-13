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
<br>
<%
String lessonNumber = request.getParameter("lessonNumber");
System.out.println("+++++++++++++++lessonNumber++++++++++++++++++"+lessonNumber);
if(lessonNumber.equals("2"))
{
%>
<iframe id="myIframe"  frameborder="0" width="100%" height="460px" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<script>
let myIframe= document.getElementById("myIframe");
let url= "https://docs.google.com/presentation/d/e/2PACX-1vQYRuAWUU4UZ62U4rFot8wtKW9a8_6zOG_sl7hQGHcP2UfgDtUMchU2hBefrfhUkw/embed?start=false&loop=false&delayms=3000";
myIframe.src=url;
</script>
<%
}
else if(lessonNumber.equals("3"))
{
%>
<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQHZuWV9lDhbR2MvGAs32BaMUSNf2UqD0y_TYtfvPAaWCtkP0qudovYW4Sj0t-5KQ/embed?start=false&loop=false&delayms=3000" frameborder="0" width="100%" height="460px" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<% 
}
else if(lessonNumber.equals("4"))
{
%>
<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTJ2bAmklL6YRCs7soPHaMIWAdRgDmGQb0UOyQ-jj0MWnKvUejzv-bKI3LfvbyXSA/embed?start=false&loop=false&delayms=3000" frameborder="0" width="100%" height="460px" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<%
}
else if(lessonNumber.equals("5"))
{
%>
<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vS4xvZCKPJ8iU_7FZHXzdoSr1U5zln6dKh_mbYJ8HvRxobcVqgGsV-AzYPUaub8Kw/embed?start=false&loop=false&delayms=3000" frameborder="0" width="100%" height="460px" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<% 
}
else if(lessonNumber.equals("6"))
{
%>
<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTvv-ELrwgPmKeFH5f8togc10hdMnLClvZhJ-QK1Ga1Y8e92wGEH1VJNAzrL5v1Ew/embed?start=false&loop=false&delayms=3000" frameborder="0" width="100%" height="460px" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<% 
}
else if(lessonNumber.equals("7"))
{
%>
<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQxAvRST5kscF4ssMGhmryQVwTGtVskvd-SvtfJSRuAe8ZWdemRi0v1b0HqdqLqCw/embed?start=false&loop=false&delayms=3000" frameborder="0" width="100%" height="460px" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<% 
}
else if(lessonNumber.equals("8"))
{
%>
<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTuct6lP1-PiVLu5pIRZ4Xrch52JXoITm8uekpbFxqnmqnLpvV_PU9P45zWXYAzow/embed?start=false&loop=false&delayms=3000" frameborder="0" width="100%" height="460px" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
<% 
}
%>

<br>
<%@ include file = "footer.jsp" %>
</body>

</html>
