package gaohuan.myblog.pojo;

import java.sql.Timestamp;

public class Photo {
	private int photoid;
	public int getPhotoid() {
		return photoid;
	}
	public void setPhotoid(int photoid) {
		this.photoid = photoid;
	}
	public int getStyleid() {
		return styleid;
	}
	public void setStyleid(int styleid) {
		this.styleid = styleid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getPhoadd() {
		return phoadd;
	}
	public void setPhoadd(String phoadd) {
		this.phoadd = phoadd;
	}
	private int styleid;
	private String title;
	private String text;
	private Timestamp inputtime;
	private String phoadd;
	
}
