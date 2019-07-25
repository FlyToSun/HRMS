package hrms.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import hrms.entity.Position;
import hrms.service.PositionService;



/**
 * 控制器
 * @author 
 * @time 2018年6月28日
 */
@Controller
public class PositionController {
	@Resource(name="positionService")
	private PositionService positionService;
	/**
	 * 处理查询请求
	 * @param name
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/searchPosition")
	public String searchPosition(String pname,Model model){
		//判断参数不能为空
		if(null!=pname && !"".equals(pname)){
			//查询
			List<Position> positions = positionService.search(pname);
			model.addAttribute("positions", positions);
			return "/searchposition.jsp";
		}else{
			model.addAttribute("msg", "名称不能为空！");
			return "/searchposition.jsp";
		}
	}
	/**
	 * 新增处理
	 * @param 
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/addPosition")
	public String addUser(Position position,Model model){
		//新增
		Position newPosition = positionService.addPosition(position);
		//判断新增是否成功
		if(newPosition!=null && newPosition.getPost_id()>0){
			List<Position> ps = new ArrayList<Position>();
			ps.add(newPosition);
			model.addAttribute("ps", ps);
			return "/addposition.jsp";
		}else{
			//失败处理
			model.addAttribute("msg", "新职位添加失败！");
			return "/addposition.jsp";
		}
	}
	/**
	 * 批量删除用户
	 * @param ids
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/delPosition")
	public String delPosition(Integer[] ids,Model model){
		if(ids!=null && ids.length>0){
			positionService.delPosition(ids);
			model.addAttribute("msg", "批量删除成功!");
			return "/searchposition.jsp";
		}else{
			model.addAttribute("msg", "请选择用户之后再删除！");
			return "/searchposition.jsp";
		}
	}
}
