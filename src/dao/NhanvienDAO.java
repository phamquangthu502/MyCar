package dao;

import java.sql.ResultSet;

import com.mysql.jdbc.CallableStatement;

import model.Nhanvien;

public class NhanvienDAO extends DAO {

	public NhanvienDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public boolean kiemtraDangnhap(Nhanvien tv) {
		boolean kq = false;
		if (tv.getUsername().contains("true") || tv.getUsername().contains("=") || tv.getPassword().contains("true")
				|| tv.getPassword().contains("="))
			return false;
		String sql = "{call kiemtraDN(?,?)}"; // su dung stored procedure
		try {
			CallableStatement cs = (CallableStatement) con.prepareCall(sql);
			cs.setString(1, tv.getUsername());
			cs.setString(2, tv.getPassword());
			ResultSet rs = cs.executeQuery();

			if (rs.next()) {
				tv.setId(rs.getInt("id"));
				tv.setVitri(rs.getString("vitri"));
				tv.setTen(rs.getString("ten"));
				tv.setNgaysinh(rs.getString("ngaysinh"));
				tv.setEmail(rs.getString("email"));
				tv.setDienthoai(rs.getString("dt"));

				kq = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			kq = false;
		}
		return kq;
	}
}
