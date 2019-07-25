package hrms.service;

import java.util.List;

import hrms.entity.Position;

public interface PositionService {
	/**
	 * 用户信息查询
	 * @param name
	 * @return
	 */
	public List<Position> search(String pname);
	/**
	 * 新增信息
	 * @param 
	 * @return 返回新增用户信息与主键 
	 */
	public Position addPosition(Position position);
	/**
	 * 批量删除用户
	 * @param ids
	 */
	public void delPosition(Integer[] ids);
}
