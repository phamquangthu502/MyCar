package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class HDongDoitacChoThue {
	private int id;
	private Date ngaybd;
	private Date ngaykt;
	private int trangthai;
	private float dongia;
	private Nhanvien nhanvien;
	private Doitac doitac;
//	private List<XeDathueDoitac> listXedathue;
//	private XeDathueDoitac xeDathue;
	private Xe xe;
	private String tinhtrang;
	private String ghichu;

	public HDongDoitacChoThue() {
		super();
	}

	public HDongDoitacChoThue(int id, Date ngaybd, Date ngaykt, int trangthai, float dongia, Nhanvien nhanvien,
			Doitac doitac, Xe xe,String tinhtrang, String ghichu) {
		super();
		this.id = id;
		this.ngaybd = ngaybd;
		this.ngaykt = ngaykt;
		this.trangthai = trangthai;
		this.dongia = dongia;
		this.nhanvien = nhanvien;
		this.doitac = doitac;
		this.xe = xe;
		this.tinhtrang = tinhtrang;
		this.ghichu = ghichu;
	}

	public HDongDoitacChoThue(int id, String ngaybd, String ngaykt, int trangthai, float dongia, Nhanvien nhanvien,
			Doitac doitac, Xe xe,String tinhtrang, String ghichu) throws ParseException {
		super();
		Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(ngaybd);  
		Date date2=new SimpleDateFormat("yyyy-MM-dd").parse(ngaykt);  
		this.id = id;
		this.ngaybd = date1;
		this.ngaykt = date2;
		this.trangthai = trangthai;
		this.dongia = dongia;
		this.nhanvien = nhanvien;
		this.doitac = doitac;
		this.xe = xe;
		this.tinhtrang = tinhtrang;
		this.ghichu = ghichu;
	}
	
	public HDongDoitacChoThue(Doitac doitac) {
		super();
		this.doitac = new Doitac(doitac, true);
	}
	
	public void setNgaybd(String ngaybd) throws ParseException {
		Date date1=new SimpleDateFormat("yyyy-MM-dd").parse(ngaybd);  
		this.ngaybd = date1;
	}

	public void setNgaykt(String ngaykt) throws ParseException {
		Date date2=new SimpleDateFormat("yyyy-MM-dd").parse(ngaykt);  
		this.ngaykt = date2;
	}

	public int getId() {
		return id;
	}

	public Date getNgaybd() {
		return ngaybd;
	}

	public Date getNgaykt() {
		return ngaykt;
	}

	public int getTrangthai() {
		return trangthai;
	}

	public Nhanvien getNhanvien() {
		return nhanvien;
	}

	public Doitac getDoitac() {
		return doitac;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setNgaybd(Date ngaybd) {
		this.ngaybd = ngaybd;
	}

	public void setNgaykt(Date ngaykt) {
		this.ngaykt = ngaykt;
	}

	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}

	public void setNhanvien(Nhanvien nhanvien) {
		this.nhanvien = nhanvien;
	}

	public void setDoitac(Doitac doitac) {
		this.doitac = doitac;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

	public float getDongia() {
		return dongia;
	}

	public Xe getXe() {
		return xe;
	}

	public String getTinhtrang() {
		return tinhtrang;
	}

	public void setDongia(float dongia) {
		this.dongia = dongia;
	}

	public void setXe(Xe xe) {
		this.xe = xe;
	}

	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}

}
