/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.EleitorDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sala19a
 */
public class EleitorDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<EleitorDTO> lista = new ArrayList();

    public void cadastrarEleitor(EleitorDTO objEleitor) throws ClassNotFoundException {
        String sql = "insert into Eleitor(titulo_eleitoral_eleitor, nome, usuario, senha)values(?, ?, ?, ?)";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objEleitor.getTituloEleitoralEleitor());
            pstm.setString(2, objEleitor.getNomeEleitor());
            pstm.setString(2, objEleitor.getUsuario());
            pstm.setString(2, objEleitor.getSenha());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }

    public ArrayList<EleitorDTO> pesquisarEleitor() throws ClassNotFoundException {
        String sql = "select * from eleitor";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery();

            while(rs.next()) {
                EleitorDTO objEleitorDTO = new EleitorDTO();
                objEleitorDTO.setCpfEleitor(rs.getInt("cpf"));
                objEleitorDTO.setNomeEleitor(rs.getString("nome"));
                lista.add(objEleitorDTO);
            }

        } catch (SQLException e) {

        }
        return lista;

    }

    public void excluirEleitor(EleitorDTO objEleitor) throws ClassNotFoundException {
        String sql = "delete from eleitores where cpfEleitor = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objEleitor.getCpfEleitor());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
        }
    }

    public void alterarEleitor(EleitorDTO objEleitor) throws ClassNotFoundException {
        String sql = "update eleitores set nomeEleitor=? where cpfEleitor = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objEleitor.getNomeEleitor());
            pstm.setInt(2, objEleitor.getCpfEleitor());

            pstm.execute();
            pstm.close();

        } catch (Exception e) {
        }
    }

    public ResultSet autenticarEleitor(EleitorDTO objEleitorDTO) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();

        try {
            String sql = "select * from eleitores where loginEleitor = ? and senhaEleitor = ?";
            pstm = con.prepareStatement(sql);

            pstm.setString(1, objEleitorDTO.getLoginEleitor());
            pstm.setString(2, objEleitorDTO.getSenhaEleitor());

            rs = pstm.executeQuery();

            return rs;

        } catch (Exception e) {
            return null;
        }

    }

}
