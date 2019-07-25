package hrms.dao;

import java.util.List;

import hrms.entity.Department;

public interface DepartmentDao {
	/**
	 * 新增
	 * @param department
	 */
	public void insertDepartment(Department department);
	/**
	 * 组合查询
	 * @param department
	 * @return
	 */
	public List<Department> findDepartmentByNoAndName(Department department);
	/**
	 * 批量删除
	 */
	public void delDepartment(Integer[] ids);
}
