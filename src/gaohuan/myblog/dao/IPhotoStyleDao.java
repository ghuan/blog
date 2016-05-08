package gaohuan.myblog.dao;


import gaohuan.myblog.pojo.PhotoStyle;

import java.util.List;
public interface IPhotoStyleDao {
	public boolean addPhotoStyle(PhotoStyle photostyle);
	public boolean delPhotoStyle(int styleid);
	public boolean updatePhotoStyle(PhotoStyle photostyle);
	public List<PhotoStyle> findPhotoStyle();
	public PhotoStyle findPhotoStyle(int styleid);
}
