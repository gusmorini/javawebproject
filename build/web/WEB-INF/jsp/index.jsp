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
        <title>Home</title>
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

            <h1 class="title center">Bem Vindo!</h1>

            <ul class="painel">
                <li>
                    <a href="cadastrarAlguem" role="button">
                        <img src="<c:url value="resources/img/add-user.png"/>">
                        Cadastrar Pessoa
                    </a>                
                </li>
                <li>
                    <a href="relatorio" role="button">
                        <img src="<c:url value="resources/img/tasks.png"/>">
                        Mostrar Relatório
                    </a>                
                </li>
                <li>
                    <a href="login" role="button">
                        <img src="<c:url value="resources/img/id-card.png"/>">
                        Efetuar Login
                    </a>                
                </li>                
                <li>
                    <a href="equipe" role="button">
                        <img src="<c:url value="resources/img/team.png"/>">
                        Equipe
                    </a>                
                </li>
            </ul>
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