package hrms.service;

import hrms.entity.Admin;

/**
 * 管理员业务处理接口
 * @author Yancy
 * @time 2018年7月2日
 */
public interface AdminService {
	/**
	 * 通过账号和密码查询管理员
	 */
	public Admin findAdmin(String aname,String adminpwd);
}
