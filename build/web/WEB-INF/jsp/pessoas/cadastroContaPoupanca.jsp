<%-- 
    Document   : cadastroContaPoupanca
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
        
            <h3 class="title">Cadastro Conta Poupança!</h3>
            
            <div class="row">
                <div class="col">
                    <form action="" method="POST">
                    
                        <label>Cliente</label>
                        <select name="cliente">
                            <c:forEach var="pessoa" items="${pessoas}">
                                <tr>
                                    <option>${pessoa.nome}</option>
                                </tr>    
                            </c:forEach>
                        </select>
                        <label>Banco</label>
                        <input type="text" placeholder='Banco' name="banco">
                        <label>Agência</label>
                        <input type="text" placeholder='Agência' name="ag">
                        <label>Conta</label>
                        <input type="text" placeholder='Conta' name="conta">

                    <button class="btn btn-primary" type="submit">Enviar</button>
                    </form>
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
