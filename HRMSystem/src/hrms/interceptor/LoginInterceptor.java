package hrms.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import hrms.entity.Admin;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
			throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//获取请求的URL
		String url = request.getRequestURI();
		//URL：除了登录请求外，其他URL都进行拦截控制
		if(url.indexOf("/login") >=0){
			return true;
		}
		//获取Session
		HttpSession session = request.getSession();
		Admin admin = (Admin) session.getAttribute("ADMIN_SESSION");
		//判断Session中是否有管理员数据
		if(admin != null){
			return true;
		}
		//不符合条件的给出提示信息，并返回登录页面
		request.setAttribute("msg", "您还没登录，请先登录！");
		request.getRequestDispatcher("/login.jsp").forward(request, response);
		return false;
	}

}
