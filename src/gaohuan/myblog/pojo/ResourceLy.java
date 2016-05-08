package gaohuan.myblog.pojo;

import java.sql.Timestamp;

public class ResourceLy {
	private int lyid;
	public int getLyid() {
		return lyid;
	}
	public void setLyid(int lyid) {
		this.lyid = lyid;
	}
	public int getResourceid() {
		return resourceid;
	}
	public void setResourceid(int resourceid) {
		this.resourceid = resourceid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public Timestamp getInputtime() {
		return inputtime;
	}
	public void setInputtime(Timestamp inputtime) {
		this.inputtime = inputtime;
	}
	private int resourceid;
	private String username;
	private String text;
	private String mail;
	private Timestamp inputtime;
	private String reply;
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
}
