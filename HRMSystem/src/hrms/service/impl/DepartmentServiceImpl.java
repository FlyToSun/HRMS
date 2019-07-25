package hrms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hrms.dao.DepartmentDao;
import hrms.entity.Department;
import hrms.service.DepartmentService;
/**
 * 业务实现类
 * @author 
 * @time 2018年7月1日
 */
@Service(value="departmentService")
public class DepartmentServiceImpl implements DepartmentService {
	
	@Autowired
	private DepartmentDao departmentDao;
	
	@Override
	public Department addDepartment(Department department) {
		departmentDao.insertDepartment(department);
		return department;
	}

	@Override
	public List<Department> findDepartment(Department department) {
		
		return departmentDao.findDepartmentByNoAndName(department);
	}
	
	@Override
	public void delDepartment(Integer[] ids) {
		departmentDao.delDepartment(ids);
	}
}
