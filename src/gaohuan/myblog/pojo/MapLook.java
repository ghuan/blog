package gaohuan.myblog.pojo;

import java.sql.Timestamp;

public class MapLook {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Timestamp getInputtime() {
		return inputtime;
	}
	public void setInputtime(Timestamp inputtime) {
		this.inputtime = inputtime;
	}
	private String mapadd;
	public String getMapadd() {
		return mapadd;
	}
	public void setMapadd(String mapadd) {
		this.mapadd = mapadd;
	}
	private String text;
	private Timestamp inputtime;
}
