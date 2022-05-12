<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Join Us</title>

        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">

        <link href="style.css" rel="stylesheet" type="text/css"/>

    </head>

    

    <body>

    <%@ include file = "headerlog.jsp" %>

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

                    <input type="submit"  value="Login">

                    <a href="forgotPassword.jsp">Forgot Password?</a><br>

                    <a href="register.jsp">Create New Account</a>

                </form>



</div>



</div>

<%@ include file = "footer.jsp" %>

</body>



<script type="text/javascript">

var form=document.getElementById('form');

form.addEventListener('submit',function(e){

    

    e.preventDefault()



    var username=document.getElementById('username').value;

    var password=document.getElementById('password').value;

    

    

    //fetch post request

    fetch("https://onlinelpk12appservice.azurewebsites.net/api/user/login",{

        method:'POST',

        body: JSON.stringify({

            userName:username,

            password:password

        }),

        

    headers:{

        

        'Content-Type':'application/json; charset=UTF-8'

        

    }

    }).then(function(response){

        

        var resp=response.json();

        

        console.log(resp)

        

        if(response.status==200){

            resp.then((data)=>{

                var object=data.content

                sessionStorage.setItem("userId",object.userId)

                console.log(sessionStorage.getItem("userId"))

                var error=data.message

                alert(error)

                if(object.userType=="STUDENT"){

                    location.href='home.jsp'

                }

                else{

                    location.href='hometeacher.jsp'

                }

                

                

                

            })

            

        

            

            

        }

        else{

            if(response.status==400){

                

                resp.then((data)=>{

                    var object=data.content

                    var error=data.errors

                    console.log(error)

                    var str=""

                    if(error.length>1){

                        for(let i=0;i<error.length;i++){

                            str+=error[i]+"\n";

                        }

                        alert(str);

                        }

                        else{

                            alert(str+error[0]);

                        }

                    location.href='login.jsp'

                    

                })

                

            }

        }

        

    

    }).then(function(data){

        

    });

    

    

})

    



</script>





</html>