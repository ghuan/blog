package gaohuan.myblog.dao;

import java.util.List;

import gaohuan.myblog.pojo.MapLook;

public interface IMapDao {
	public boolean addMap(MapLook map);
	public boolean delMap(int id);
	public boolean updateMap(MapLook map);
	public List<MapLook> findMap();
	public MapLook findMap(int id);
}
