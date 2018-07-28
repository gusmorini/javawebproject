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
        <link rel="icon" type="imagem/png" href="<c:url value="resources/img/java.png"/>" />
        <title>Cadastro - Conta Corrente</title>
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
        
            <h3 class="title">Cadastro de Pessoa</h3>
            
            <div class="row">
                <div class="col">
                    <form action="persistePessoa" method="post" autocomplete=""off>
                        
                        <h2>Dados Pessoais</h2>
                        
                        <div class='divide'>
                        <label>Nome</label>
                        <input type="text" placeholder="Nome" name="nome">
                        <label>Sobrenome</label>
                        <input type="text" placeholder="Sobrenome" name="sobrenome">
                        </div>
                        
                        <div class='divide'>
                        <label>Nascimento</label>
                        <input type="text" placeholder='Data de Nascimento' name="nascimento">
                        <label>RG</label>
                        <input type="text" placeholder='RG' name="rg">
                        <label>CPF</label>
                        <input type="text" placeholder='CPF' name="cpf">
                        </div>
                        
                        <h2>Login</h2>
                        <div class='divide'>
                        <label>Login</label>
                        <input type="text" placeholder='Login' name="login">
                        <label>Senha</label>
                        <input type="password" placeholder='Senha' name="senha">
                        </div>
                        
                        <h2>Endereço</h2>
                         <div class='divide'>
                        <label>Rua</label>
                        <input type="text" placeholder='Rua' name="rua">
                        <label>Número</label>
                        <input type="text" placeholder='Número' name="numero">                        
                         </div>
                        
                         <div class='divide'>
                        <label>Estado</label>
                           <select name="estado"> 
                            <option value="ac">Acre</option> 
                            <option value="al">Alagoas</option> 
                            <option value="am">Amazonas</option> 
                            <option value="ap">Amapá</option> 
                            <option value="ba">Bahia</option> 
                            <option value="ce">Ceará</option> 
                            <option value="df">Distrito Federal</option> 
                            <option value="es">Espírito Santo</option> 
                            <option value="go">Goiás</option> 
                            <option value="ma">Maranhão</option> 
                            <option value="mt">Mato Grosso</option> 
                            <option value="ms">Mato Grosso do Sul</option> 
                            <option value="mg">Minas Gerais</option> 
                            <option value="pa">Pará</option> 
                            <option value="pb">Paraíba</option> 
                            <option value="pr">Paraná</option> 
                            <option value="pe">Pernambuco</option> 
                            <option value="pi">Piauí</option> 
                            <option value="rj">Rio de Janeiro</option> 
                            <option value="rn">Rio Grande do Norte</option> 
                            <option value="ro">Rondônia</option> 
                            <option value="rs">Rio Grande do Sul</option> 
                            <option value="rr">Roraima</option> 
                            <option value="sc">Santa Catarina</option> 
                            <option value="se">Sergipe</option> 
                            <option value="sp">São Paulo</option> 
                            <option value="to">Tocantins</option> 
                           </select>
                        <label>Cidade</label>
                        <input type="text" placeholder='Cidade' name="cidade">
                        <label>CEP</label>
                        <input type="text" placeholder='CEP' name="cep">
                         </div>
                        
                        <h2>Conta Bancária</h2>
                        
                        <div class='divide'>
                        
                        <label>Banco</label>
                        <input type="text" placeholder='Banco' name="banco">
                        <label>Agência</label>
                        <input type="text" placeholder='Agência' name="ag">                        
                        <label>Tipo da Conta</label>
                        <select name='tipo'>
                            <option value="cc">Conta Corrente</option>
                            <option value="cp">Conta Poupança</option>
                        </select>
                        <label>Conta</label>
                        <input type="text" placeholder='Conta' name="conta">
                        
                        </div>
                        
                        <button class="btn" type="submit">Enviar</button>
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
