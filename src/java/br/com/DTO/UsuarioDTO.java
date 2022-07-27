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
public class UsuarioDTO {
    private Integer cpfUsuario;
    private Integer rgUsuario;
    private String nomeUsuario;
    private Integer tituloEleitoralUsuario;
    private Date dataNascimento;
    private String loginUsuario;
    private String senhaUsuario;
    

    /**
     * @return the cpfUsuario
     */
    public int getCpfUsuario() {
        return cpfUsuario;
    }

    /**
     * @param cpfUsuario the cpfUsuario to set
     */
    public void setCpfUsuario(Integer cpfUsuario) {
        this.cpfUsuario = cpfUsuario;
    }

    /**
     * @return the rgUsuario
     */
    public int getRgUsuario() {
        return rgUsuario;
    }

    /**
     * @param rgUsuario the rgUsuario to set
     */
    public void setRgUsuario(int rgUsuario) {
        this.rgUsuario = rgUsuario;
    }

    /**
     * @return the nomeUsuario
     */
    public String getNomeUsuario() {
        return nomeUsuario;
    }

    /**
     * @param nomeUsuario the nomeUsuario to set
     */
    public void setNomeUsuario(String nomeUsuario) {
        this.nomeUsuario = nomeUsuario;
    }

    /**
     * @return the tituloEleitoralUsuario
     */
    public int getTituloEleitoralUsuario() {
        return tituloEleitoralUsuario;
    }

    /**
     * @param tituloEleitoralUsuario the tituloEleitoralUsuario to set
     */
    public void setTituloEleitoralUsuario(int tituloEleitoralUsuario) {
        this.tituloEleitoralUsuario = tituloEleitoralUsuario;
    }

    /**
     * @return the dataNascimento
     */
    public Date getDataNascimento() {
        return dataNascimento;
    }

    /**
     * @param dataNascimento the dataNascimento to set
     */
    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    /**
     * @return the loginUsuario
     */
    public String getLoginUsuario() {
        return loginUsuario;
    }

    /**
     * @param loginUsuario the loginUsuario to set
     */
    public void setLoginUsuario(String loginUsuario) {
        this.loginUsuario = loginUsuario;
    }

    /**
     * @return the senhaUsuario
     */
    public String getSenhaUsuario() {
        return senhaUsuario;
    }

    /**
     * @param senhaUsuario the senhaUsuario to set
     */
    public void setSenhaUsuario(String senhaUsuario) {
        this.senhaUsuario = senhaUsuario;
    }
      
    
    
}
