package hrms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import hrms.dao.WageDao;
import hrms.entity.Wage;
import hrms.service.WageService;
@Service(value="wageService")
public class WageServiceImpl implements WageService {
	
	@Autowired
	private WageDao wageDao;
	@Override
	public Wage addWage(Wage wage) {
		wageDao.insertWage(wage);
		return wage;
	}
	@Override
	public List<Wage> search(String name) {
		return wageDao.findWageByName("%"+name+"%");
	}
	
	@Override
	public void delWage(Integer[] ids) {
		wageDao.delWage(ids);
	}

}
