package hrms.entity;
/**
 * 部门实体类
 * @author 
 * @time 2018年7月1日
 */
public class Department {
	private int dept_id;//部门id
	private String dept_no;//编号
	private String dept_name;//部门名称
	private String parent;//上级部门
	private String manager;//负责人
	private int telephone;//电话
	private String email;//邮箱
	private String duty;//部门职责
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public String getDept_no() {
		return dept_no;
	}
	public void setDept_no(String dept_no) {
		this.dept_no = dept_no;
	}
	public String getDept_name() {
		return dept_name;
	}
	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}
	public String getParent() {
		return parent;
	}
	public void setParent(String parent) {
		this.parent = parent;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public int getTelephone() {
		return telephone;
	}
	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Department(int dept_id, String dept_no, String dept_name, String parent, String manager, int telephone,
			String email, String duty) {
		super();
		this.dept_id = dept_id;
		this.dept_no = dept_no;
		this.dept_name = dept_name;
		this.parent = parent;
		this.manager = manager;
		this.telephone = telephone;
		this.email = email;
		this.duty = duty;
	}
	@Override
	public String toString() {
		return "Department [dept_id=" + dept_id + ", dept_no=" + dept_no + ", dept_name=" + dept_name + ", parent="
				+ parent + ", manager=" + manager + ", telephone=" + telephone + ", email=" + email + ", duty=" + duty
				+ "]";
	}
	
}
