package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Giaidua;

public class GiaiduaDAO extends DAO{
	public GiaiduaDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ArrayList<Giaidua> dsgiai(){
		ArrayList<Giaidua> giaiduas = new ArrayList<Giaidua>();
		String sqlgiai = "SELECT * FROM tblgiaidua";
		try {
			PreparedStatement preparedStatement = con.prepareStatement(sqlgiai);
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String ten = rs.getString("ten");
				String nam = rs.getString("nam");
				String mota = rs.getString("mota");
				giaiduas.add(new Giaidua(id,ten,nam,mota));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return giaiduas;
	}

}
