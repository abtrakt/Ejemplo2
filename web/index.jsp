<%-- 
    Document   : index
    Created on : 17/02/2013, 06:30:07 PM
    Author     : CarlosIQR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function validar(){
                if(document.getElementById("user").value==""){
                    alert("No pusiste user");
                    document.getElementById("user").focus();
                }else if(document.getElementById("password").value==""){
                    alert("No pusiste password");
                    document.getElementById("password").focus();
                }else{
                    document.login.submit();
                }
            }
        </script>
    </head>
    <body>
        
        <h1>Bienvenidos</h1>
        <p>Esta es una página web de prueba hecha por Carlos y Oleksiy</p>
        <form name ="login"action="Welcome.jsp" method="post">
            <input id="user" name="user" type="text">
            <input id="password" name="password" type="password">
            <input type="button" onclick="validar();" value="login">
        </form>
        <form>
            <a href="Register.jsp">Registrar</a>
        </form>
        
    </body>
</html>
