/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author Leonardo
 */
public class ContaPoupanca extends Pessoa {
    
    public String conta, agencia, banco;
    public Boolean ePoupanca = true;
    
    public void setConta(String conta){
        this.conta = conta;
    }
    
    public void setAgencia(String agencia){
        this.agencia = agencia;
    }
  
    public void setBanco(String banco){
        this.banco = banco;
    }
    
}
