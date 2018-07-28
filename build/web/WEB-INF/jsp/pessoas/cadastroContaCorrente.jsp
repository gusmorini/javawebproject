<%-- 
    Document   : cadastroContaCorrente
    Created on : 14/07/2018, 13:51:14
    Author     : Leonardo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="resources/css/style2.css" />" rel="stylesheet" type="text/css" />
        <title>Cadastro - Conta Corrente</title>
    </head>
    <body>
        
        <header id="header">
            <div class="row">
                <div class="col">
                    <div class="container">
                        <h2 id="txtMain"><a href='index'>Java Web - Training</a></h2>
                    </div>
                </div>
            </div>
        </header>
        
        <div class="container" id="conteudo" />
        
            <h3>Cadastro Conta Corrente!</h3>
            
            <div class="row">
                <div class="col">
                    <form action="" method="post">
                        <div class="input-group mb-4">
                            <input type="text" class="form-control formFirstInput" placeholder="Nome" name="nome">
                        </div>
                        <div class="input-group mb-4">
                            <input type="text" class="form-control formFirstInput" placeholder="Sobrenome" name="sobrenome">
                        </div>
                        <div class="input-group mb-4">
                            <input type="text" class="form-control formFirstInput" placeholder="Endereço" name="Endereco">
                        </div>
                        <div class="input-group mb-4">
                            <input type="text" class="form-control formFirstInput" placeholder="Telefone" name="telefone">
                        </div>
                        <div class="input-group mb-4">
                            <input type="text" class="form-control formFirstInput" placeholder="Conta" name="conta">
                        </div>
                        <div class="input-group mb-4">
                            <input type="text" class="form-control formFirstInput" placeholder="Agencia" name="agencia">
                        </div>
                        <div class="input-group mb-4">
                            <input type="text" class="form-control formFirstInput" placeholder="Banco" name="banco">
                        </div>
                        <button class="btn btn-primary" type="submit">Enviar</button>
                    </form>
                    
                    <table>
                        <tr>
                        <td>Nome</td>
                        <td>Sobrenome</td>
                        </tr>
                        <c:forEach var="pessoa" items="${pessoas}">
                            <tr>
                                <td>${pessoa.nome}</td>
                                <td>${pessoa.sobrenome}</td>
                            </tr>    
                        </c:forEach>
                    </table>
                    
                    
                </div>
            </div>  
            
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
