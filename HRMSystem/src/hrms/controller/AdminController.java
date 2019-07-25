package hrms.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hrms.entity.Admin;
import hrms.service.AdminService;

/**
 * 管理员登录控制器
 * @author Yancy
 * @time 2018年7月2日
 */
@Controller
public class AdminController {
	//依赖注入
	@Autowired
	private AdminService adminService;
	/**
	 * 登录
	 */
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(String aname,String adminpwd,Model model,HttpSession session){
		//通过账号密码查询
		Admin admin = adminService.findAdmin(aname, adminpwd);
		if(admin != null){
			//将管理员添加到Session
			session.setAttribute("ADMIN_SESSION", admin);
			//跳转到主页面
			return "/main.jsp";
		}
		model.addAttribute("msg", "账号或密码错误，请重新输入！");
		//返回登录页面
		return "/login.jsp";
	}
	/**
	 * 退出登录
	 */
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		//清楚Session
		session.invalidate();
		//重定向到登录页面的跳转方法
		return "/login.jsp";
	}
	/**
	 * 向登录页面跳转
	 */
	//@RequestMapping(value="/login", method=RequestMethod.GET)
	//public String toLogion(){
		//return "login";
	//}
	
}
