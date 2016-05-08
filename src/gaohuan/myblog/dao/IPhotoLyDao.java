package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.PhotoLy;

import java.util.List;

public interface IPhotoLyDao {
	public boolean addPhotoLy(PhotoLy photoly);
	public boolean updatePhotoLy(PhotoLy photoly);
	public boolean delPhotoLy(int lyid);
	public List<PhotoLy> findPhotoLy(int photoid);
}
