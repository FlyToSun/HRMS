package hrms.service;

import java.util.List;

import hrms.entity.Wage;

public interface WageService {
	/**
	 * 新增
	 * @param wage
	 * @return 
	 */
	public Wage addWage(Wage wage);
	/**
	 * 查询
	 * @param name
	 * @return
	 */
	public List<Wage> search(String name);
	/**
	 * 批量删除
	 * @param ids
	 */
	public void delWage(Integer[] ids);
}
