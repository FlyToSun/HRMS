package hrms.dao;

import java.util.List;
import hrms.entity.Position;

public interface PositionDao {
	/**
	 * 
	 * 根据用户名查询用户信息
	 * @param name
	 * @return
	 */
	public List<Position> findPosiByName(String pname);
	/**
	 * 新增信息
	 * @param 
	 */
	public void insertPosition(Position position);
	/**
	 * 批量删除用户
	 */
	public void delPosition(Integer[] ids);
}
