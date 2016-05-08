package gaohuan.myblog.pojo;

import java.sql.Timestamp;

public class IpLook {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	public Timestamp getInputtime() {
		return inputtime;
	}
	public void setInputtime(Timestamp inputtime) {
		this.inputtime = inputtime;
	}
	private String ip;
	
	private Timestamp inputtime; 
}
