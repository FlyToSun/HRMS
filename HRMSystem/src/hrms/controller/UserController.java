package hrms.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import hrms.entity.User;
import hrms.service.UserService;

/**
 * 用户请求控制器
 * @author Yancy
 *
 */
@Controller
public class UserController {
	
	@Resource(name="userService")
	private UserService userService;
	
	/**
	 * 新增新用户处理
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/addUser")
	public String addUser(User user,Model model){
		//新增用户
		User newUser = userService.addUser(user);
		//判断用户新增是否成功
		if(newUser!=null && newUser.getUser_id()>0){
			List<User> users = new ArrayList<User>();
			users.add(newUser);
			model.addAttribute("users", users);
			return "/adduser.jsp";
		}else{
			//新增失败处理
			model.addAttribute("msg", "新增用户失败！");
			return "/adduser.jsp";
		}
	}
	/**
	 * 组合查询控制处理方法
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/searchUserByNameAndStatus")
	public String searchUserByNameAndStatus(User user,
			Model model){
		//组合查询
		List<User> users = userService.findUserByNameAndStatus(user);
		//判断查询结果
		if(!users.isEmpty() && users.size()>0){
			model.addAttribute("users", users);
			return "/searchuser.jsp";
		}else{
			model.addAttribute("msg", "没有满足条件的用户信息！");
			return "/searchuser.jsp";
		}
	}
	/**
	 * 批量删除用户
	 * @param ids
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/delUser")
	public String delUser(Integer[] ids,Model model){
		if(ids!=null && ids.length>0){
			userService.delUser(ids);
			model.addAttribute("msg", "批量删除成功!");
			return "/searchuser.jsp";
		}else{
			model.addAttribute("msg", "请选择用户之后再删除！");
			return "/searchuser.jsp";
		}
	}
	/**
	 * 修改用户信息请求处理方法
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/updateUser")
	public String updateUser(User user,Model model){
		if(user!=null && user.getUser_id()>0){
			userService.updateUser(user);
			model.addAttribute("msg", "修改成功！");
		}else{
			model.addAttribute("msg", "修改失败！");
		}
		return "/allocaterole.jsp";
	}
	

}
