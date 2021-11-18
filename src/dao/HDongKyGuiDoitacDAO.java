package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.CallableStatement;

import model.Doitac;
import model.Xe;

public class HDongKyGuiDoitacDAO extends DAO {

	public HDongKyGuiDoitacDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public List<Doitac> searchDoitac(String dong) {

		List<Doitac> doitacs = new ArrayList<Doitac>();
		String sql = "{call searchDoitac(?)}";
		try {
			CallableStatement cs = (CallableStatement) con.prepareCall(sql);
			cs.setString(1, dong);
			ResultSet rs = cs.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				int trangthai = rs.getInt("trangthai");
				String ten = rs.getString("ten");
				String diachi = rs.getString("diachi");
				String dt = rs.getString("dt");
				String ghichu = "";
				if (rs.getString("ghichu") != null)
					ghichu = rs.getString("ghichu");
				doitacs.add(new Doitac(id, trangthai, ten, diachi, dt, ghichu));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return doitacs;
	}

	public List<Xe> getXeDoitac(int ids, String dongs) {

		List<Xe> xes = new ArrayList<Xe>();
		String sql = "{call searchXetheoDt(?,?)}";
		try {
			CallableStatement cs = (CallableStatement) con.prepareCall(sql);
			cs.setInt(1, ids);
			cs.setString(2, dongs);
			ResultSet rs = cs.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String ten = rs.getString("ten");
				String bienso = rs.getString("bienso");
				String dong = rs.getString("dong");
				int doi = rs.getInt("doi");
				String mau = rs.getString("mau");
				String ghichu = rs.getString("ghichu");
				xes.add(new Xe(id, ten, bienso, dong, doi,mau, ghichu));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return xes;
	}
}
