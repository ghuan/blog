package gaohuan.myblog.pojo;

import java.sql.Timestamp;

public class Collect {
	private int collectid;

	public int getCollectid() {
		return collectid;
	}
	public void setCollectid(int collectid) {
		this.collectid = collectid;
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
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Timestamp getInputtime() {
		return inputtime;
	}
	public void setInputtime(Timestamp inputtime) {
		this.inputtime = inputtime;
	}
	public String getColladd() {
		return colladd;
	}
	public void setColladd(String colladd) {
		this.colladd = colladd;
	}
	private int styleid;
	private String title;
	private int point;
	private Timestamp inputtime;
	private String colladd;
	private String mark;
	public String getMark() {
		return mark;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	private String description;
}
