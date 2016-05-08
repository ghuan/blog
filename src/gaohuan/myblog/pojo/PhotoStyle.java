package gaohuan.myblog.pojo;

import java.sql.Timestamp;

public class PhotoStyle {
	private int styleid;
	public int getStyleid() {
		return styleid;
	}
	public void setStyleid(int styleid) {
		this.styleid = styleid;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	private String style;
	private Timestamp inputtime;
	public Timestamp getInputtime() {
		return inputtime;
	}
	public void setInputtime(Timestamp inputtime) {
		this.inputtime = inputtime;
	}
	
}
