/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import classes.Login;
import classes.Pessoa;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



/**
 *
 * @author Leonardo
 */
@Controller
public class MeuController {
    
    @RequestMapping("/inicio")
    public String index(){
        return "index";
    }
    
    @RequestMapping("/cadastrarAlguem")
    public String cadastroPessoas(){
        return "pessoas/cadastroPessoas";
    }
    
    @RequestMapping("/cadastroContaCorrente")
    public String cadastroContaCorrente(){
        return "pessoas/cadastroContaCorrente";
    }
    
    @RequestMapping("/cadastroContaPoupanca")
    public String cadastroContaPoupanca(){
        return "pessoas/cadastroContaPoupanca";
    }
    
    @RequestMapping("/relatorio")
    public String relatorio(HttpServletRequest request){
        
        if ( request.getSession().getAttribute("pessoas") != null ){
            return "pessoas/relatorio";
        }else{
            return "pessoas/relatorioVazio";
        }
        
    }
    
    @RequestMapping("/relatorioVazio")
    public String relatorioVazio(){
        return "pessoas/relatorioVazio";
    }
    
    @RequestMapping("/login")
    public String login(HttpServletRequest request, Model m){
        
        if (request.getSession().getAttribute("usuario") == null ){
            return "pessoas/login";
        }else{
            return "pessoas/mensagemLogado";
        }
        
    }
    
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "pessoas/login";
    }

    @RequestMapping("/validar")
    public String validar(HttpServletRequest request, Model m, Login l){
        
        if (!"".equals(request.getParameter("login"))){
            
            if( (request.getParameter("login").equals("admin")) && (request.getParameter("senha").equals("admin")) ){
                
                ArrayList usuario = new ArrayList();
                usuario.add(l);
                request.getSession().setAttribute("usuario", usuario);
                
                return "pessoas/mensagemLogado";
            }else{
                return "pessoas/mensagemErro";
            }
        }else{
            return "pessoas/mensagemErro";
        }
    }
    
    @RequestMapping("/mensagemLogado")
    public String mensagemLogado(){
        return "pessoas/mensagemLogado";
    }

    @RequestMapping("/mensagemErro")
    public String mensagemErro(){
        return "pessoas/mensagemErro";
    }        
    
    @RequestMapping("/persistePessoa")
    public String persistePessoa(Model m, Pessoa p, HttpServletRequest request){
        
        //persistencia usando collection...
        ArrayList pessoas = new ArrayList();
        
        if (request.getSession().getAttribute("pessoas") != null )
            pessoas = (ArrayList)request.getSession().getAttribute("pessoas");
       
        pessoas.add(p);
        
        request.getSession().setAttribute("pessoas",pessoas);
        
        m.addAttribute("pessoa",p);
        return "pessoas/mensagemCadastro";
    }
    
    @RequestMapping("/equipe")
    public String equipe(){
        return "pessoas/equipe";
    }
    
    
}
