package gaohuan.myblog.pojo;
import java.sql.Timestamp;
public class Resource {
	private int resourceid;
	public int getResourceid() {
		return resourceid;
	}
	public void setResourceid(int resourceid) {
		this.resourceid = resourceid;
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
	public String getResadd() {
		return resadd;
	}
	public void setResadd(String resadd) {
		this.resadd = resadd;
	}
	private int styleid;
	private String title;
	private String text;
	private int point;
	private Timestamp inputtime;
	private String resadd;
	private String imageadd;
	private String size;
	
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getBanben() {
		return banben;
	}
	public void setBanben(String banben) {
		this.banben = banben;
	}
	private String language;
	private String banben;
	public String getImageadd() {
		return imageadd;
	}
	public void setImageadd(String imageadd) {
		this.imageadd = imageadd;
	}
}
