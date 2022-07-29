/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.VotoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author sala19a
 */
public class VotoDAO {
    Connection con;
     PreparedStatement ps;
    ResultSet rs;
    
    public void votarCandidato(VotoDTO objVoto) throws ClassNotFoundException{
        String sql = "insert into voto(titulo_eleitoral_eleitor,numero_candidato)values(?, ?, ?)";
        con = new ConexaoDAO().conexaoBD();
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, objVoto.getTituloEleitoralEleitor());
            ps.setInt(2, objVoto.getNumero_candidato());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
        }
    }
    
    
}
