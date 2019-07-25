package hrms.dao;

import org.apache.ibatis.annotations.Param;

import hrms.entity.Admin;

/**
 * 管理员接口
 * @author Yancy
 * @time 2018年7月2日
 */
public interface AdminDao {
	/**
	 * 通过账号密码进行查询
	 * @param admin
	 * @param adminpwd
	 * @return
	 */
	public Admin findAdmin(@Param("aname") String admin,
						   @Param("adminpwd") String adminpwd);
}
