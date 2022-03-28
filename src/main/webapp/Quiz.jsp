<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="header.jsp"/>
<div style="text-align:center">
<h3>Lesson 1 Quiz</h3>
</div>

<div id="quiz-section">
</div>
<jsp:include page="footer.jsp"/>
</body>

<script type="text/javascript">
window.onload = function(){
	
	getApiData();
	console.log("hello");
	
	var response = getApiData();
		
}

function getApiData()
{	
	var response = null;
	let apiUrl = "http://jsonplaceholder.typicode.com/posts";
	$.get(apiUrl, function(data, status){
	    response = data;
	    buildStudentProgressTable(data);
	  });
	return response;
}

function buildStudentProgressTable(response){
	
    let questions = "";
    for(let i=0; i<8;i++)
    {
    	let question = "<div  class='container' style='margin-top:15px'> <p><strong>" + response[i].id + ". "+  response[i].body + "</strong></p>";
    	let options = "<div style='margin-left:10px'>";
    	
    	let option = "<label class='radio-inline'>";
    	option +="<input type='radio' name='"+response[i].id+"_option1"+"'>" + response[i].title.slice(0,10)
    		option+= "</label>";    		
    		
    		options +=	option;
    		options +=	option;
    		options +=	option;
    		options += "</div>";
    		question +=	options
    		
    		question+= "</div>"
    		
    		questions+=question;
    }
    questions+="<div style='text-align:center'><button class='btn btn-primary'> Submit Quiz </button></div>"
    $('#quiz-section').html(questions);
}

</script>
</html>
