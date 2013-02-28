<%-- 
    Document   : Register
    Created on : 17/02/2013, 06:32:20 PM
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
                    alert("No pusiste Username");
                    document.getElementById("user").value="";
                    document.getElementById("user").focus();
                }else 
                if(document.getElementById("Password1").value==""){
                    alert("No pusiste el Password1");
                    document.getElementById("Password1").value="";
                    document.getElementById("Password1").focus();
                }else
                if(document.getElementById("Password2").value==""){
                    alert("No pusiste el password2");
                    document.getElementById("Password2").value="";
                    document.getElementById("Password2").focus();
                }else
                if(document.getElementById("Password1").value != document.getElementById("Password2").value){
                    alert("No Coinciden los Password");
                    document.getElementById("Password1").value="";
                    document.getElementById("Password2").value="";
                    document.getElementById("Password1").focus();                    
                }else
                if(document.getElementById("Nombre").value==""){
                    alert("No pusiste Nombre");
                    document.getElementById("Nombre").value="";
                    document.getElementById("Nombre").focus();
                }else
                if(document.getElementById("Apellidos").value==""){
                    alert("No pusiste los Apellidos");
                    document.getElementById("Apellidos").value="";
                    document.getElementById("Apellidos").focus();
                }else
                if(document.getElementById("e-mail").value==""){
                    alert("No pusiste e-mail");
                    document.getElementById("e-mail").value="";
                    document.getElementById("e-mail").focus();
                }else if(!email(document.getElementById("e-mail").value)){
                    alert("E-mail no valido");
                    document.getElementById("e-mail").value="";
                    document.getElementById("e-mail").focus();
                }else{
                    document.register.submit();
                }
                
            }
            function email(cadena){
                if(cadena.indexOf("@")==-1){
                    return false;
                }else{
                    return true;
                }
                
            }
        </script>
    </head>
    
    <body>
        <h1>Pagina de Registro</h1>
        <form name="register" action="Welcome.jsp">
            <p>Username</p>
            <input id="user" name="user" type="text">
            <p>Password</p>
            <input id="Password1" name="password1" type="password"> <input id="Password2" name="password2" type="password">
            <p>Nombre</p>
            <input id="Nombre" name="Nombre" type="text">
            <p>Apellidos</p>
            <input id="Apellidos" name="Apellidos" type="text">
            <p>e-mail</p>
            <input id="e-mail" name="e-mail" type="text">
            <p></p>
            <input type="button" onclick="validar();" value="register">
             
        </form>
    
        
    </body>
    
</html>
