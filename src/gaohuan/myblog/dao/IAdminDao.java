package gaohuan.myblog.dao;

import java.util.List;

import gaohuan.myblog.pojo.Admin;

public interface IAdminDao {
	public boolean addAdmin(Admin admin);
	public boolean delAdmin(int adminid);
	public boolean updateAdmin(Admin admin);
	public Admin findAdmin(int adminid);
	public List<Admin> findAdmin();
	public Admin login(String adminName);
}
