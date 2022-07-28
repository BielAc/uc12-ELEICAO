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
    PreparedStatement ps;
    ResultSet rs;

    public void cadastrarEleitor(EleitorDTO objEleitor) throws ClassNotFoundException {
        String sql = "insert into Eleitor(titulo_eleitoral_eleitor, nome, usuario, senha)values(?, ?, ?, ?)";
        con = new ConexaoDAO().conexaoBD();

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, objEleitor.getTituloEleitoralEleitor());
            ps.setString(2, objEleitor.getNome());
            ps.setString(3, objEleitor.getUsuario());
            ps.setString(4, objEleitor.getSenha());
            ps.execute();
            ps.close();

        } catch (SQLException e) {
        }
    }

    public ArrayList<EleitorDTO> pesquisarEleitor() throws ClassNotFoundException {
        String sql = "select * from eleitor";
        con = new ConexaoDAO().conexaoBD();
        ArrayList<EleitorDTO> lista = new ArrayList();

        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                EleitorDTO objEleitorDTO = new EleitorDTO();
                objEleitorDTO.setTituloEleitoralEleitor(rs.getInt("titulo_eleitoral_eleitor"));
                objEleitorDTO.setNome(rs.getString("nome"));
                objEleitorDTO.setUsuario(rs.getString("usuario"));
                objEleitorDTO.setSenha(rs.getString("senha"));
                lista.add(objEleitorDTO);
            }

        } catch (SQLException e) {

        }
        return lista;

    }

    public EleitorDTO pesquisarEleitorPorTituloEleitoral(Integer TituloEleitoralEleitor) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();
        EleitorDTO objEleitorDTO = new EleitorDTO();

        try {
            ps = con.prepareStatement("SELECT * FROM eleitor WHERE titulo_eleitoral_eleitor = ?");
            ps.setInt(1, TituloEleitoralEleitor);
            rs = ps.executeQuery();

            while (rs.next()) {
                objEleitorDTO.setTituloEleitoralEleitor(rs.getInt("titulo_eleitoral_eleitor"));
                objEleitorDTO.setNome(rs.getString("nome"));
                objEleitorDTO.setUsuario(rs.getString("usuario"));
                objEleitorDTO.setSenha(rs.getString("senha"));
            }

            ps.close();

        } catch (SQLException e) {
            e.getMessage();
        }
        return objEleitorDTO;

    }

    public void excluirEleitor(EleitorDTO objEleitor) throws ClassNotFoundException {
        String sql = "delete from eleitores where titulo_eleitoral_eleitor = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, objEleitor.getTituloEleitoralEleitor());
            ps.execute();
            ps.close();

        } catch (Exception e) {
        }
    }

    public void alterarEleitor(EleitorDTO objEleitor) throws ClassNotFoundException {
        String sql = "update eleitor set nome=?, usuario=?, senha=? where titulo_eleitoral_eleitor = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, objEleitor.getNome());
            ps.setString(2, objEleitor.getUsuario());
            ps.setString(3, objEleitor.getSenha());
            ps.setInt(4, objEleitor.getTituloEleitoralEleitor());

            ps.execute();
            ps.close();

        } catch (Exception e) {
        }
    }
    
    public EleitorDTO findByUsuario(String usuario) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();
        EleitorDTO cliente = new EleitorDTO();

        try {
            ps = con.prepareStatement("SELECT * FROM eleitor WHERE usuario = ?");
            ps.setString(1, usuario);
            rs = ps.executeQuery();

            while (rs.next()) {
                cliente.setTituloEleitoralEleitor(rs.getInt("titulo_eleitoral_eleitor"));
                cliente.setNome(rs.getString("nome"));
                cliente.setUsuario(rs.getString("usuario"));
                cliente.setSenha(rs.getString("senha"));
            }

            ps.close();

        } catch (SQLException e) {
            e.getMessage();
        }
        
        return cliente;
    }

    public ResultSet autenticarEleitor(EleitorDTO objEleitorDTO) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();

        try {
            String sql = "select * from eleitor where usuario = ? and senha = ?";
            ps = con.prepareStatement(sql);

            ps.setString(1, objEleitorDTO.getUsuario());
            ps.setString(2, objEleitorDTO.getSenha());

            rs = ps.executeQuery();

            return rs;

        } catch (Exception e) {
            return null;
        }

    }
    
    

    public void delete(Integer id) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();

        try {
            ps = con.prepareStatement("DELETE FROM eleitor WHERE titulo_eleitoral_eleitor = ?");
            ps.setInt(1, id);
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {
            e.getMessage();
        }
    }

    public void update(EleitorDTO objEleitorDTO) throws ClassNotFoundException {
        con = new ConexaoDAO().conexaoBD();

        try {
            ps = con.prepareStatement("UPDATE eleitor SET nome = ?, usuario = ?, senha = ? WHERE titulo_eleitoral_eleitor = ?");
            ps.setString(1, objEleitorDTO.getNome());
            ps.setString(2, objEleitorDTO.getUsuario());
            ps.setString(3, objEleitorDTO.getSenha());
            ps.setInt(4, objEleitorDTO.getTituloEleitoralEleitor());
            ps.executeUpdate();
            ps.close();

        } catch (SQLException e) {
        }
    }

}
