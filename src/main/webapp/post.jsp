<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Join Us</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
    </head>
     <body>
    <%@ include file = "header.jsp" %>
        <div class="container">
            <div class="box">
                <!-- <img class="avatar" src="img/user-avatar.png"> -->
                <h1>
Login Account</h1>
<form id="form" method="post">
                    <p>
Username</p>
<input type="text" placeholder="Username" id="username" required>
                    <p>
Password</p>
<input type="password" placeholder="Password" id="password" required>

                    <input type="submit" value="Login">

                    <a href="forgotPassword.jsp">Forgot Password?</a><br>

                    <a href="register.jsp">Create New Account</a>

                </form>
</div>
</div>
<%@ include file = "footer.jsp" %>
</body>
<script type="text/javascript">
       //fetch post request
    fetch("https://onlinelpk12appservice.azurewebsites.net/api/user/login",{
        method:'POST',
        body: JSON.stringify({
            url:url
        }),
  
    headers:{
        'Content-Type':'application/json; charset=UTF-8'
    }

    }).then(function(response){

        

        var resp=response.json();

        console.log(JSON.stringify(resp))

        if(response.status==200){

            console.log(resp)

            /* alert(response.message)*/

            /* location.href='home.jsp'  */

        }

        else{

            if(response.status==400){

                alert("Invalid lesson number");

                /* let str="";

                if(response.errors.length>1){

                for(let i=0;i<response.errors.length;i++){

                    str+=response.errors[i]+"\n";

                }

                alert(str);

                }

                else{

                    alert(alresponse.errors[0]);

                } */

                location.href='login.jsp'

            }

        }

        /* return response.json();  */

    })/* .then(function(data){

        console.log(data)

    }) */

    

})

    



</script>