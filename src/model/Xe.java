package model;

public class Xe {
	private int id;
	private String ten;
	private String bienso;
	private String dong;
	private int doi;
	private String mau;
	private String ghichu;

	public Xe() {
		super();
	}

	public Xe(int id, String ten, String bienso, String dong, int doi, String mau, String ghichu) {
		super();
		this.id = id;
		this.ten = ten;
		this.bienso = bienso;
		this.dong = dong;
		this.doi = doi;
		this.mau = mau;
		this.ghichu = ghichu;
	}

	public String getMau() {
		return mau;
	}

	public void setBienso(String bienso) {
		this.bienso = bienso;
	}

	public void setMau(String mau) {
		this.mau = mau;
	}

	public int getId() {
		return id;
	}

	public String getTen() {
		return ten;
	}

	public String getBienso() {
		return bienso;
	}

	public String getDong() {
		return dong;
	}

	public int getDoi() {
		return doi;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public void setBiebso(String bienso) {
		this.bienso = bienso;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public void setDoi(int doi) {
		this.doi = doi;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

}
