package hrms.entity;
/**
 * 系统管理员实体类
 * @author Yancy
 * @time 2018年6月29日
 */
public class Admin {
	private int uid;//ID
	private String aname;//账号
	private String adminpwd;//密码
	
	@Override
	public String toString() {
		return "Admin [uid=" + uid + ", aname=" + aname + ", adminpwd=" + adminpwd + "]";
	}
	public Admin(int uid, String aname, String adminpwd) {
		super();
		this.uid = uid;
		this.aname = aname;
		this.adminpwd = adminpwd;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAdminpwd() {
		return adminpwd;
	}
	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd;
	}
	
}
