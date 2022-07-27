/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DTO;

import java.util.Date;

/**
 *
 * @author sala19a
 */
public class EleitorDTO {
    private String nome;
    private String usuario;
    private String senha;
    private Integer tituloEleitoralEleitor;
    

    /**
     * @return the nomeEleitor
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nomeEleitor the nomeEleitor to set
     */
    public void setNome(String eleitor) {
        this.nome = eleitor;
    }

    /**
     * @return the tituloEleitoralEleitor
     */
    public int getTituloEleitoralEleitor() {
        return tituloEleitoralEleitor;
    }

    /**
     * @param tituloEleitoralEleitor the tituloEleitoralEleitor to set
     */
    public void setTituloEleitoralEleitor(int tituloEleitoralEleitor) {
        this.tituloEleitoralEleitor = tituloEleitoralEleitor;
    }

    /**
     * @return the tituloEleitoralEleitor
     */
    public String getUsuario() {
        return this.usuario;
    }

    /**
     * @param tituloEleitoralEleitor the tituloEleitoralEleitor to set
     */
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    /**
     * @return the tituloEleitoralEleitor
     */
    public String getSenha() {
        return this.senha;
    }

    /**
     * @param tituloEleitoralEleitor the tituloEleitoralEleitor to set
     */
    public void setSenha(String senha) {
        this.senha = senha;
    }
      
    
    
}
