package hrms.entity;
/**
 * 系统用户实体类
 * @author Yancy
 * @time 2018年6月27日
 */
public class User {
	private int user_id;//用户ID
	private String user_name;//用户名
	private String password;//密码
	private int role_id;//角色ID
	private String status;//状态
	private int emp_id;//员工ID
	
	
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name + ", password=" + password + ", role_id="
				+ role_id + ", status=" + status + ", emp_id=" + emp_id + "]";
	}
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int user_id, String user_name, String password, int role_id, String status, int emp_id) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.password = password;
		this.role_id = role_id;
		this.status = status;
		this.emp_id = emp_id;
	}
	
	
	
}
