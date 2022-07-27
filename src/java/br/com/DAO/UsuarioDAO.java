/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.DAO;

import br.com.DTO.UsuarioDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sala19a
 */
public class UsuarioDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<UsuarioDTO> lista = new ArrayList();

    public void cadastrarUsuario(UsuarioDTO objUsuario) throws ClassNotFoundException {
        String sql = "insert into Usuario(nomeUsuario)values(?)";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objUsuario.getNomeUsuario());
            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
        }
    }

    public ArrayList<UsuarioDTO> pesquisarUsuario() throws ClassNotFoundException {
        String sql = "select * from usuario";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery();

            while(rs.next()) {
                UsuarioDTO objUsuarioDTO = new UsuarioDTO();
                objUsuarioDTO.setCpfUsuario(rs.getInt("cpf"));
                objUsuarioDTO.setNomeUsuario(rs.getString("nome"));
                lista.add(objUsuarioDTO);
            }

        } catch (SQLException e) {

        }
        return lista;

    }

    public void excluirUsuario(UsuarioDTO objUsuario) throws ClassNotFoundException {
        String sql = "delete from usuarios where cpfUsuario = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objUsuario.getCpfUsuario());
            pstm.execute();
            pstm.close();

        } catch (Exception e) {
        }
    }

    public void alterarUsuario(UsuarioDTO objUsuario) throws ClassNotFoundException {
        String sql = "update usuarios set nomeUsuario=? where cpfUsuario = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objUsuario.getNomeUsuario());
            pstm.setInt(2, objUsuario.getCpfUsuario());

            pstm.execute();
            pstm.close();

        } catch (Exception e) {
        }
    }

    public ResultSet autenticarUsuario(UsuarioDTO objUsuarioDTO) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();

        try {
            String sql = "select * from usuarios where loginUsuario = ? and senhaUsuario = ?";
            pstm = con.prepareStatement(sql);

            pstm.setString(1, objUsuarioDTO.getLoginUsuario());
            pstm.setString(2, objUsuarioDTO.getSenhaUsuario());

            rs = pstm.executeQuery();

            return rs;

        } catch (Exception e) {
            return null;
        }

    }

}
