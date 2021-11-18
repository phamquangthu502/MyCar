package model;

public class Giaidua {
	private int id;
	private String ten;
	private String nam;
	private String mota;
	
	public Giaidua() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Giaidua(int id, String ten, String nam, String mota) {
		super();
		this.id = id;
		this.ten = ten;
		this.nam = nam;
		this.mota = mota;
	}
	public int getId() {
		return id;
	}
	public String getTen() {
		return ten;
	}
	
	public String getNam() {
		return nam;
	}
	
	public String getMota() {
		return mota;
	}	
}
