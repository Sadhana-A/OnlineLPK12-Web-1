<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

       <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Register Account</title>

        

        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">

        <link href="style.css" rel="stylesheet" type="text/css"/>

    </head>

    

    <body>

    
 <%@ include file = "headerlog.jsp" %>
    

        <div class="container">

            <div class="regbox box">

                

                <h1>

Register Account</h1>



<form id="form" method="post">

<%--<label for="role" required>UserRole:</label>

<select id = "role" name="role" >

<option value="Student">Student</option>



<option value="Teacher">Teacher</option>

</select> <br>    

      &nbsp;<p>FirstName</p>

          <input type="text" placeholder="FirstName" id="firstname" required>

                   <p>LastName</p>

          <input type="text" placeholder="LastName" id="lastname" required>--%>

                   <p>UserName</p>

          

<input type="text" placeholder="Username" id="username" required>

                   <p>

Useremail</p>

<input type="text" placeholder="Useremail" id="email" required>

               
                   <p>Role</p>

        <input type="text" placeholder="userRole" id="role" required>  

    <p>Password</p>

<input type="password" placeholder="Password" id="password" required>

                   <input type="submit" value="Register">

                   <a href="login.jsp">Already have Account?</a>

                </form>

</div>

</div>

<br>

<%@ include file = "footer.jsp" %>

</body>

<script type="text/javascript">

    var form=document.getElementById('form');

    form.addEventListener('submit', function(e){

        

        e.preventDefault()
		
       
	var roles=document.getElementById('role').value;
        var username=document.getElementById('username').value;

        var email=document.getElementById('email').value;

        var password=document.getElementById('password').value;
      <%--  var role=[];
        for(var i=0;i<roles.length;i++){
        	role.push({roles[i]})
        }--%>
        

     <%--   var isStudent=false;

        if(role=="Student"){

            isStudent=true;

        }

        console.log(isStudent)--%>

        

        //fetch post request

        fetch("http://localhost:8083/api/auth/signup",{

            method:'POST',

            body: JSON.stringify({

                "username":username,

                "email":email,
				"roles":[roles],
                "password":password,

                  

                

            }),

            

        headers:{

            "Content-Type":"application/json"

            

        }

        }).then(function(response){

            var resp=response.json();

            if(response.status==200){

                

                    resp.then((data)=>{

                        
						
                        console.log(data)

                       location.href='login.jsp';

                        

                    })

                

            }

            else{

                if(response.status==400){

                resp.then((data)=>{

                        
                        alert(data.message)
                        location.href="register.jsp"

                        

                        

                        

                        

                        

                    })

                

                    

                }

            }

        

            return response.json();

        }).then(function(data){

            console.log(data);

        })

        

    })

        

</script>

</html>
