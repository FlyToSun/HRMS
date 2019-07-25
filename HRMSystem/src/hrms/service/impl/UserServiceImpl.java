package hrms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hrms.dao.UserDao;
import hrms.entity.User;
import hrms.service.UserService;
/**
 * 用户模块业务实现类
 * @author Yancy
 * @time 2018年6月27日
 */
@Service(value="userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	@Override
	public User addUser(User user) {
		userDao.insertUser(user);
		return user;
	}
	@Override
	public List<User> findUserByNameAndStatus(User user) {
		return userDao.findUserByNameAndStatus(user);
	}
	
	@Override
	public void delUser(Integer[] ids) {
		userDao.delUser(ids);
	}
	
	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
		
	}


}
