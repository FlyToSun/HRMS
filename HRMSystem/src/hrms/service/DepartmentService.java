package hrms.service;

import java.util.List;

import hrms.entity.Department;

public interface DepartmentService {
	/**
	 * 新增
	 * @param user
	 * @return 返回新增
	 */
	public Department addDepartment(Department department);
	/**
	 * 组合查询
	 * @param user
	 * @return
	 */
	public List<Department> findDepartment(Department department);
	/**
	 * 批量删除
	 * @param ids
	 */
	public void delDepartment(Integer[] ids);
}
