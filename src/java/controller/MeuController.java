/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

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
    public String relatorio(){
        return "pessoas/relatorio";
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
}
