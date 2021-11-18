package model;

public class Nhanvien {
	private int id;
	private String username;
	private String password;
	private String ten;
	private String ngaysinh;
	private String email;
	private String dienthoai;
	private String diachi;
	private String vitri;
	private String ghichu;

	public Nhanvien() {
		super();
	}

	public Nhanvien(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	

	public Nhanvien(int id, String ten, String ngaysinh, String email, String dienthoai, String vitri) {
		super();
		this.id = id;
		this.ten = ten;
		this.ngaysinh = ngaysinh;
		this.email = email;
		this.dienthoai = dienthoai;
		this.vitri = vitri;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public String getTen() {
		return ten;
	}

	public String getNgaysinh() {
		return ngaysinh;
	}

	public String getEmail() {
		return email;
	}

	public String getDienthoai() {
		return dienthoai;
	}

	public String getDiachi() {
		return diachi;
	}

	public String getVitri() {
		return vitri;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setDienthoai(String dienthoai) {
		this.dienthoai = dienthoai;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public void setVitri(String vitri) {
		this.vitri = vitri;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
