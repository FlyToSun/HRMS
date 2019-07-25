package hrms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hrms.dao.PositionDao;
import hrms.entity.Position;
import hrms.service.PositionService;
/**
 * 职位模块业务实现类
 * @author 
 * @time 2018年6月28日
 */
@Service(value="positionService")
public class PositionServiceImpl implements PositionService {
	@Autowired
	private PositionDao positionDao;
	@Override
	public List<Position> search(String pname) {
		return positionDao.findPosiByName("%"+pname+"%");
	}
	@Override
	public Position addPosition(Position position) {
		positionDao.insertPosition(position);
		return position;
	}

	@Override
	public void delPosition(Integer[] ids) {
		positionDao.delPosition(ids);
	}
}
