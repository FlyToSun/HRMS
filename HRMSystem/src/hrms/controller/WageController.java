package hrms.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import hrms.entity.Wage;
import hrms.service.WageService;

@Controller
public class WageController {
	@Resource(name="wageService")
	private WageService wageService;
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/addWage")
	public String addWage(Wage wage,Model model){
		Wage newWage = wageService.addWage(wage);
		if(newWage!=null && newWage.getWage_id()>0){
			List<Wage> wages = new ArrayList<Wage>();
			wages.add(newWage);
			model.addAttribute("wages", wages);
			return "/addwage.jsp";
		}else{
			model.addAttribute("wag", "新增失败！");
			return "/addwage.jsp";
		}
	}
	@RequestMapping(value="/searchWage")
	public String searchWage(String name,Model model){
		//判断参数不能为空
		if(null!=name && !"".equals(name)){
			//查询
			List<Wage> wages = wageService.search(name);
			model.addAttribute("wages", wages);
			return "/managewage.jsp";
		}else{
			model.addAttribute("msg", "用户名不能为空！");
			return "/managewage.jsp";
		}
	}
	/**
	 * 批量删除
	 * @param ids
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/delWage")
	public String delWage(Integer[] ids,Model model){
		if(ids!=null && ids.length>0){
			wageService.delWage(ids);
			model.addAttribute("msg", "批量删除成功!");
			return "/managewage.jsp";
		}else{
			model.addAttribute("msg", "请选择之后再删除！");
			return "/managewage.jsp";
		}
	}

}
