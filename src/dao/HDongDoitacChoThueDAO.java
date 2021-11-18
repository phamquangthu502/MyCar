package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.CallableStatement;

import model.Doitac;
import model.HDongDoitacChoThue;
import model.Nhanvien;
import model.Xe;

public class HDongDoitacChoThueDAO extends DAO {

	public HDongDoitacChoThueDAO() {
		super();
	}

	public boolean luuHopDong(HDongDoitacChoThue hd) {
		boolean kq = false;
		
		String sqlthem = "INSERT INTO tbl_hdongdoitacchothue (ngaybd,ngaykt,trangthai,dongia,ghichu,tbl_doitacid,tbl_xeid, tbl_nhanvienid, tinhtrang) VALUES (?,?,?,?,?,?,?,?,?);";
		try( PreparedStatement preparedStatement = con.prepareStatement(sqlthem)){
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String date1=sdf.format(hd.getNgaybd() );
			String date2=sdf.format(hd.getNgaykt() );
			preparedStatement.setString(1, date1 );
			preparedStatement.setString(2, date2 );
			preparedStatement.setInt(3, hd.getTrangthai());
			preparedStatement.setFloat(4, hd.getDongia());
			preparedStatement.setString(5, hd.getGhichu());
			preparedStatement.setInt(6, hd.getDoitac().getId());
			preparedStatement.setInt(7, hd.getXe().getId());
			preparedStatement.setInt(8, hd.getNhanvien().getId());
			preparedStatement.setString(9, hd.getTinhtrang());
			kq=true;
			preparedStatement.executeUpdate();
		}
		catch (SQLException e) {
			e.printStackTrace();
			kq=false;
		}
		return kq;
	}
	
	public Doitac getDt(int ma) {
		Doitac dtac = null;
		String sql = "{call getOneDt(?)}";
		try {
			CallableStatement cs = (CallableStatement) con.prepareCall(sql);
			cs.setInt(1, ma);
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
				dtac = new Doitac(id, trangthai, ten, diachi, dt, ghichu);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return dtac;
	}
	
	public Xe getXe(int ids) {

		Xe xe = null;
		String sql = "{call getOneXe(?)}";
		try {
			CallableStatement cs = (CallableStatement) con.prepareCall(sql);
			cs.setInt(1, ids);
			ResultSet rs = cs.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String ten = rs.getString("ten");
				String bienso = rs.getString("bienso");
				String dong = rs.getString("dong");
				int doi = rs.getInt("doi");
				String mau = rs.getString("mau");
				String ghichu = rs.getString("ghichu");
				xe = new Xe(id, ten, bienso, dong, doi,mau, ghichu);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return xe;
	}
	
	public Nhanvien getNv(int ids) {

		Nhanvien nv = null;
		String sql = "{call getOneNv(?)}";
		try {
			CallableStatement cs = (CallableStatement) con.prepareCall(sql);
			cs.setInt(1, ids);
			ResultSet rs = cs.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String vt = rs.getString("vitri");
				String ten = rs.getString("ten");
				String ns = rs.getString("ngaysinh");
				String dt = rs.getString("dt");
				String email = rs.getString("email");

				nv = new Nhanvien(id, ten, ns, email, dt, vt);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return nv;
	}
	
	public List<HDongDoitacChoThue> listHD() throws ParseException{
		List<HDongDoitacChoThue> res = new ArrayList<>();
		String sql = "SELECT * FROM tbl_hdongdoitacchothue a WHERE trangthai=1;";
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				int id = rs.getInt("id");
				String ngaybd = rs.getString("ngaybd");
				String ngaykt = rs.getString("ngaykt");
				int trangthai = Integer.parseInt(rs.getString("trangthai"));
				float dongia = Float.parseFloat(rs.getString("dongia"));
				String ghichu = rs.getString("ghichu");
				String tinhtrang = rs.getString("tinhtrang");
				int iddt = Integer.parseInt(rs.getString("tbl_doitacid"));
				Doitac dt = getDt(iddt);
				
				int idxe = Integer.parseInt(rs.getString("tbl_xeid"));
				Xe xe = getXe(idxe);
				
				int idnv = Integer.parseInt(rs.getString("tbl_nhanvienid"));
				Nhanvien nv = getNv(idnv);
				
				res.add(new HDongDoitacChoThue(id, ngaybd, ngaykt, trangthai, dongia, nv, dt, xe, tinhtrang, ghichu));
				//doiduas.add(new Doidua(id,tendoi,tenhang,mota));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;
	}
	
	public boolean updateHd(int id) {
		boolean check = true;
		String sqlsua = "UPDATE `tbl_hdongdoitacchothue` SET `trangthai`=? WHERE `id`=?";
		try( PreparedStatement preparedStatement = con.prepareStatement(sqlsua)){
			preparedStatement.setInt(1, 2);
			preparedStatement.setInt(2, id);
			preparedStatement.executeUpdate();	
		}catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			check = false;
		}
		return check;
	}

}
