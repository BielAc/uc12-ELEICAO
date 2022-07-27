/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.CandidatoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sala19a
 */
public class CandidatoDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<CandidatoDTO> lista = new ArrayList();

    public void cadastrarCandidato(CandidatoDTO objCandidato) throws ClassNotFoundException {
        String sql = "insert into Candidato(nomeCandidato)values(?)";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objCandidato.getNomeCandidato());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }

    public ArrayList<CandidatoDTO> pesquisarCandidato() throws ClassNotFoundException {
        String sql = "select * from Candidato";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            while (rs.next()) {
                CandidatoDTO objCandidatoDTO = new CandidatoDTO();
                objCandidatoDTO.setNumeroCandidato(rs.getInt("numeroCandidato"));
                objCandidatoDTO.setNomeCandidato(rs.getString("nomeCandidato"));

                lista.add(objCandidatoDTO);

            }

        } catch (SQLException e) {

        }
        return lista;
    
    }
    
    public void excluirCandidato(CandidatoDTO objNumeroCandidato) throws ClassNotFoundException {
        String sql = "delete from Candidato where numeroCandidato = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1,objNumeroCandidato.getNumeroCandidato());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }
    
    
    }

    
