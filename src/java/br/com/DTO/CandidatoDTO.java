/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DTO;

/**
 *
 * @author sala19a
 */
public class CandidatoDTO {
    private Integer numeroCandidato;
    private String nomeCandidato;
    
    /**
     * @return the numeroCandidato
     */
    public int getNumeroCandidato() {
        return numeroCandidato;
    }

    /**
     * @param numeroCandidato the numeroCandidato to set
     */
    public void setNumeroCandidato(int numeroCandidato) {
        this.numeroCandidato = numeroCandidato;
    }

    /**
     * @return the nomeCandidato
     */
    public String getNomeCandidato() {
        return nomeCandidato;
    }

    /**
     * @param nomeCandidato the nomeCandidato to set
     */
    public void setNomeCandidato(String nomeCandidato) {
        this.nomeCandidato = nomeCandidato;
    }
    
    
}
