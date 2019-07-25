package hrms.entity;

import java.sql.Date;

/**
 * 工资实体类
 * @author Yancy
 * @time 2018年6月30日
 */
public class Wage {
	private int wage_id;//工资ID
	private String emp_name;//员工
	private float base_pay;//基础工资
	private float post_pay;//职位工资
	private float overtime_pay;//加班工资
	private float bonus;//奖金
	private float allowance;//津贴
	private Date pay_time;//发放时间
	private float total_pay;//应发合计
	private float fianl_pay;//实发合计
	private float income_tax;//个人所得税
	public int getWage_id() {
		return wage_id;
	}
	public void setWage_id(int wage_id) {
		this.wage_id = wage_id;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public float getBase_pay() {
		return base_pay;
	}
	public void setBase_pay(float base_pay) {
		this.base_pay = base_pay;
	}
	public float getPost_pay() {
		return post_pay;
	}
	public void setPost_pay(float post_pay) {
		this.post_pay = post_pay;
	}
	public float getOvertime_pay() {
		return overtime_pay;
	}
	public void setOvertime_pay(float overtime_pay) {
		this.overtime_pay = overtime_pay;
	}
	public float getBonus() {
		return bonus;
	}
	public void setBonus(float bonus) {
		this.bonus = bonus;
	}
	public float getAllowance() {
		return allowance;
	}
	public void setAllowance(float allowance) {
		this.allowance = allowance;
	}
	public Date getPay_time() {
		return pay_time;
	}
	public void setPay_time(Date pay_time) {
		this.pay_time = pay_time;
	}
	public float getTotal_pay() {
		return total_pay;
	}
	public void setTotal_pay(float total_pay) {
		this.total_pay = total_pay;
	}
	public float getFianl_pay() {
		return fianl_pay;
	}
	public void setFianl_pay(float fianl_pay) {
		this.fianl_pay = fianl_pay;
	}
	public float getIncome_tax() {
		return income_tax;
	}
	public void setIncome_tax(float income_tax) {
		this.income_tax = income_tax;
	}
	public Wage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Wage(int wage_id, String emp_name, float base_pay, float post_pay, float overtime_pay, float bonus,
			float allowance, Date pay_time, float total_pay, float fianl_pay, float income_tax) {
		super();
		this.wage_id = wage_id;
		this.emp_name = emp_name;
		this.base_pay = base_pay;
		this.post_pay = post_pay;
		this.overtime_pay = overtime_pay;
		this.bonus = bonus;
		this.allowance = allowance;
		this.pay_time = pay_time;
		this.total_pay = total_pay;
		this.fianl_pay = fianl_pay;
		this.income_tax = income_tax;
	}
	@Override
	public String toString() {
		return "Wage [wage_id=" + wage_id + ", emp_name=" + emp_name + ", base_pay=" + base_pay + ", post_pay=" + post_pay
				+ ", overtime_pay=" + overtime_pay + ", bonus=" + bonus + ", allowance=" + allowance + ", pay_time="
				+ pay_time + ", total_pay=" + total_pay + ", fianl_pay=" + fianl_pay + ", income_tax=" + income_tax
				+ "]";
	}
	
}
