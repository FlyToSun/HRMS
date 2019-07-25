package hrms.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import hrms.entity.Department;
import hrms.service.DepartmentService;

@Controller
public class DepartmentController {
	@Resource(name="departmentService")
	private DepartmentService departmentService;
	/**
	 * 新增
	 */
	@RequestMapping(value="/addDepartment")
	public String addDepartment(Department department,Model model){
		//新增用户
		Department newDepart = departmentService.addDepartment(department);
		//判断用户注册是否成功
		if(newDepart!=null && newDepart.getDept_id()>0){
			List<Department> departs = new ArrayList<Department>();
			departs.add(newDepart);
			model.addAttribute("departs", departs);
			return "/adddepart.jsp";
		}else{
			//注册失败处理
			model.addAttribute("msg", "新增失败！");
			return "/adddepart.jsp";
		}
	}
	/**
	 * 组合查询控制处理方法
	 * @param 
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/searchDepartmentByNoAndName")
	public String searchDepartmentByNoAndName(Department department,
			Model model){
		//组合查询
		List<Department> departs = departmentService.findDepartment(department);
		//判断查询结果
		if(!departs.isEmpty() && departs.size()>0){
			model.addAttribute("departs", departs);
			return "/managedepart.jsp";
		}else{
			model.addAttribute("msg", "没有满足条件的部门信息！");
			return "/managedepart.jsp";
		}
	}
	/**
	 * 批量删除
	 * @param ids
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/delDepartment")
	public String delDepartment(Integer[] ids,Model model){
		if(ids!=null && ids.length>0){
			departmentService.delDepartment(ids);
			model.addAttribute("msg", "批量删除成功!");
			return "/managedepart.jsp";
		}else{
			model.addAttribute("msg", "请选择编号之后再删除！");
			return "/managedepart.jsp";
		}
	}
}
