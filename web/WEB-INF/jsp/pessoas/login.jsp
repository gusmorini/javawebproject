<%-- 
    Document   : index
    Created on : 14/07/2018, 12:40:08
    Author     : Leonardo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="resources/css/style2.css" />" rel="stylesheet" type="text/css" />
        <link rel="icon" type="imagem/png" href="<c:url value="resources/img/java.png"/>" />
        <title>Login</title>
    </head>
    <body>
        
        <header id="header">
            <div class="row">
                <div class="col">
                    <div class="container">
                        <p class="logo">
                            <a href="index" title="home">
                                <img src="<c:url value="resources/img/java.png"/>">
                            </a>
                        </p>
                        <h2 id="txtMain">Java Web - Training</h2>
                    </div>
                </div>
            </div>
        </header>
        
        <div class="container" id="conteudo" />
        
        <form action="validar" method="post" class="login" autocomplete="off">
            <h2>Login</h2>
            <input type='text' name='login' placeholder="login">
            <input type='password' name='senha' placeholder='senha'>
            <button class="btn" type="submit">Enviar</button>
            <h5 class="right">LOGIN: admin <br> SENHA: admin</h5>
        </form>

        </div>
        
        <footer id="footer">
            <div class="row">
                <div class="col">
                    <div class="container">
                        <p id="txtFooter">Todos os direitos reservados!</p>
                    </div>
                </div>
            </div>
        </footer>
        
        
    </body>
</html>