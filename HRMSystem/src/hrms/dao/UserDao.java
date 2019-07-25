package hrms.dao;

import java.util.List;

import hrms.entity.*;

/**
 * 用户接口
 * @author Yancy
 * @time 2018年6月27日
 */
public interface UserDao {
	/**
	 * 新增用户信息
	 * @param user
	 */
	public void insertUser(User user);
	/**
	 * 根据用户名、角色、状态进行组合查询
	 * @param user
	 * @return
	 */
	public List<User> findUserByNameAndStatus(User user);
	/**
	 * 批量删除用户
	 */
	public void delUser(Integer[] ids);
	/**
	 * 修改用户信息
	 * @param user
	 */
	public void updateUser(User user);
	
}
