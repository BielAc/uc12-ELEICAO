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
public class VotoDTO {    
    private CandidatoDTO objCandidatoDTO = new CandidatoDTO();
    private EleitorDTO objUsuarioDTO = new EleitorDTO();
    
    private Integer tituloEleitoralEleitor;
    private int numero_candidato;
    
//    public VotoDTO(Integer idVoto, Integer numeroCandidato, Integer cpfUsuario){
//        this.idVoto = idVoto;
//        objCandidatoDTO.setNumeroCandidato(numeroCandidato);
//        //objUsuarioDTO.setCpfUsuario(cpfUsuario);
//    }

    /**
     * @return the objCandidatoDTO
     */
    
    
    
    public CandidatoDTO getObjCandidatoDTO() {
        return objCandidatoDTO;
    }

    /**
     * @param objCandidatoDTO the objCandidatoDTO to set
     */
    public void setObjCandidatoDTO(CandidatoDTO objCandidatoDTO) {
        this.objCandidatoDTO = objCandidatoDTO;
    }

    /**
     * @return the objUsuarioDTO
     */
    public EleitorDTO getObjUsuarioDTO() {
        return objUsuarioDTO;
    }

    /**
     * @param objUsuarioDTO the objUsuarioDTO to set
     */
    public void setObjUsuarioDTO(EleitorDTO objUsuarioDTO) {
        this.objUsuarioDTO = objUsuarioDTO;
    }

    /**
     * @return the tituloEleitoralEleitor
     */
    public Integer getTituloEleitoralEleitor() {
        return tituloEleitoralEleitor;
    }

    /**
     * @param tituloEleitoralEleitor the tituloEleitoralEleitor to set
     */
    public void setTituloEleitoralEleitor(Integer tituloEleitoralEleitor) {
        this.tituloEleitoralEleitor = tituloEleitoralEleitor;
    }

    /**
     * @return the numero_candidato
     */
    public int getNumero_candidato() {
        return numero_candidato;
    }

    /**
     * @param numero_candidato the numero_candidato to set
     */
    public void setNumero_candidato(int numero_candidato) {
        this.numero_candidato = numero_candidato;
    }
    
    
    
}
