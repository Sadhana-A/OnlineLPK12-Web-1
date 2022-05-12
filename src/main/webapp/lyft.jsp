<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test</title>
</head>
<body>

	
</body>
<script type="text/javascript">

function execute(){
	let request = {
			"string_to_cut": "iamyourlyftdriver"
         };
	Post(request);
}

function Post(request) {
	let url= "https://lyft-interview-test.glitch.me/test";
    let success = false;
    let res="";
    console.log('request: ', request);
    $.ajax({
   	 contentType:'application/json',
        data: request,
        success: function (data) {
            res= data;
        },
        type: 'POST',
        url: url,
        success: function(data){
        	console.log('response content: ',data.content);
        	
        	
        },
        error: function(data){
        	console.log(data);
        }
    });
    
}



</script>
</html>