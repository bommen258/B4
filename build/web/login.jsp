<%-- 
    Document   : login
    Created on : Sep 24, 2023, 10:19:35 PM
    Author     : My pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@include file="common/header.jsp" %>
        <link rel="stylesheet" href="css/login.css"/>
          
    </head>
    <body class="text-center">
        <main class="form-signin">
            <form action="login" method="post">
                <img class="mb-4" src="img/logo.jpg" alt="" width="72" height="57">
                <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
                 <div class="form-floating">
                <input type="text" name="username"  class="form-control" id="floatingInput" placeholder="UserName"/>
                  <label for="floatingInput">UserName</label>
                 </div>
                   <div class="form-floating">
                <input type="password" name="password"  class="form-control" id="floatingPassword" placeholder="Password"/>
                  <label for="floatingInput"> Password</label>
                 </div>
  
                <br/>
                <input type="submit" value="Login" class="w-100 btn btn-lg btn-primary"/>
                <br/>
            </form>

            <p>${msg}</p>
        </main>
                <%@include file="common/script.jsp" %>
    </body>
</html>
