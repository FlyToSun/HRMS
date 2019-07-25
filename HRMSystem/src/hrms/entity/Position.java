package hrms.entity;
/**
 * 职位实体类
 * @author 
 * @time 2018年6月28日
 */
public class Position {
	private int post_id;//职位ID
	private String post_no;//职位编号
	private String post_name;//职位名称
	private String post_desc;//职位描述
	private int dept_id;//部门ID
	private int limit_no;//编制人数
	
	@Override
	public String toString() {
		return "Position [post_id=" + post_id + ", post_no=" + post_no + ", post_name=" + post_name + ", post_desc="
				+ post_desc + ", dept_id=" + dept_id + ", limit_no=" + limit_no + "]";
	}
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public String getPost_no() {
		return post_no;
	}
	public void setPost_no(String post_no) {
		this.post_no = post_no;
	}
	public String getPost_name() {
		return post_name;
	}
	public void setPost_name(String post_name) {
		this.post_name = post_name;
	}
	public String getPost_desc() {
		return post_desc;
	}
	public void setPost_desc(String post_desc) {
		this.post_desc = post_desc;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public int getLimit_no() {
		return limit_no;
	}
	public void setLimit_no(int limit_no) {
		this.limit_no = limit_no;
	}
	public Position() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Position(int post_id, String post_no, String post_name, String post_desc, int dept_id, int limit_no) {
		super();
		this.post_id = post_id;
		this.post_no = post_no;
		this.post_name = post_name;
		this.post_desc = post_desc;
		this.dept_id = dept_id;
		this.limit_no = limit_no;
	}
	
	

}
