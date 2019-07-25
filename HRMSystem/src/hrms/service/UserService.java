package hrms.service;

import java.util.List;

import hrms.entity.User;

/**
 * 用户模块业务处理接口
 * @author Yancy
 * @time 2018年6月27日
 */
public interface UserService {
	/**
	 * 新增用户信息
	 * @param user
	 * @return 返回新增用户信息与主键 
	 */
	public User addUser(User user);
	/**
	 * 组合查询
	 * @param user
	 * @return
	 */
	public List<User> findUserByNameAndStatus(User user);
	/**
	 * 批量删除用户
	 * @param ids
	 */
	public void delUser(Integer[] ids);
	/**
	 * 用户信息修改
	 * @param user
	 */
	public void updateUser(User user);
	
}
