package model;

public class XeDathueDoitac {
	private int id;
	private float dongia;
	private int soluong;
	private String tinhtrang;
	private Xe xe;

	public XeDathueDoitac() {
		super();
	}

	public XeDathueDoitac(int id, float dongia, int soluong, Xe xe) {
		super();
		this.id = id;
		this.dongia = dongia;
		this.soluong = soluong;
		this.xe = xe;
	}

	public int getId() {
		return id;
	}

	public float getDongia() {
		return dongia;
	}

	public int getSoluong() {
		return soluong;
	}

	public Xe getXe() {
		return xe;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setDongia(float dongia) {
		this.dongia = dongia;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public void setXe(Xe xe) {
		this.xe = xe;
	}

}
