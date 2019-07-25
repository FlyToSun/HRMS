package hrms.dao;

import java.util.List;


import hrms.entity.Wage;

public interface WageDao {
	/**
	 * 新增工资
	 * @param user
	 */
	public void insertWage(Wage wage);
	/**
	 * 
	 * 根据员工名查询信息
	 * @param name
	 * @return
	 */
	public List<Wage> findWageByName(String name);
	/**
	 * 批量删除用户
	 */
	public void delWage(Integer[] ids);
}
