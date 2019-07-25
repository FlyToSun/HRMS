package hrms.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hrms.dao.AdminDao;
import hrms.entity.Admin;
import hrms.service.AdminService;
/**
 * 管理员业务实现类
 * @author Yancy
 * @time 2018年7月2日
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService {

	//注入AdminDao
	@Autowired
	private AdminDao adminDao;
	//通过账号和密码查询管理员
	@Override
	public Admin findAdmin(String aname, String adminpwd) {
		Admin admin = this.adminDao.findAdmin(aname, adminpwd);
		return admin;
	}

}
