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
    private String nomeEleitor;
    private String usuario;
    private String senha;
    private Integer tituloEleitoralEleitor;
    

    /**
     * @return the nomeEleitor
     */
    public String getNomeEleitor() {
        return nomeEleitor;
    }

    /**
     * @param nomeEleitor the nomeEleitor to set
     */
    public void setNomeEleitor(String nomeEleitor) {
        this.nomeEleitor = nomeEleitor;
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
      
    
    
}
