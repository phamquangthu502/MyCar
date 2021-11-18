package model;

public class Doitac {
	private int id;
	private int trangthai;
	private String ten;
	private String diachi;
	private String dt;
	private String ghichu;

	public Doitac() {
		super();
	}

	public Doitac(Doitac doitac, boolean check) {
		if(check) {
			this.id = doitac.id;
			this.trangthai = doitac.trangthai;
			this.ten = doitac.ten;
			this.diachi = doitac.diachi;
			this.dt = doitac.dt;
			this.ghichu = doitac.ghichu;
		}
	}
	
	public Doitac(int id, int trangthai, String ten, String diachi, String dt, String ghichu) {
		super();
		this.id = id;
		this.trangthai = trangthai;
		this.ten = ten;
		this.diachi = diachi;
		this.dt = dt;
		this.ghichu = ghichu;
	}
	
	public Doitac(int id, String ten, String diachi, String dt) {
		super();
		this.id = id;
		this.ten = ten;
		this.diachi = diachi;
		this.dt = dt;

	}
	public int getId() {
		return id;
	}

	public int getTrangthai() {
		return trangthai;
	}

	public String getTen() {
		return ten;
	}

	public String getDiachi() {
		return diachi;
	}

	public String getDt() {
		return dt;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public void setDt(String dt) {
		this.dt = dt;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

}
