package gaohuan.myblog.dao;

import java.util.List;

import gaohuan.myblog.pojo.IpLook;

public interface IIpLookDao {
	public boolean addIplook(IpLook iplook);
	public List<IpLook> findIplook();
	public List<IpLook> findIpDay(String day);
	public List<IpLook> findIpbyIp(String ip);
}
