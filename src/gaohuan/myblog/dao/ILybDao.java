package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.Lyb;

import java.util.List;

public interface ILybDao {
	public boolean addLyb(Lyb lyb);
	public boolean updateLyb(Lyb lyb);
	public boolean delLyb(int lyid);
	public List<Lyb> findLyb();
}
