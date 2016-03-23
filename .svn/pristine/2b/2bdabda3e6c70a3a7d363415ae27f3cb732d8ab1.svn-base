package com.jes.wms.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.jes.wms.web.beans.Unit;
import com.jes.wms.dao.impl.BaseDao;

public class UnitImpl extends BaseImpl<Unit> {
	private BaseDao<Unit, Integer> unitDao;

	public void setUnitDao(BaseDao<Unit, Integer> dao) {
		this.unitDao = dao;
	}

	@Override
	public int queryResultsCount() {
		// TODO Auto-generated method stub
		String hql = "from Unit";
		List<Unit> myUnit = Collections.emptyList();
		try {
			myUnit = unitDao.find(hql);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (myUnit != null)
			return myUnit.size();
		return 0;
	}

	@Override
	public List<Unit> queryByPage(int from, int length) {
		// TODO Auto-generated method stub
		List<Unit> units = Collections.emptyList();
		String hql = "from Unit where IKey between ? and ?";
		Object[] values = { from, length };
		try {
			units = unitDao.find(hql, values);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (units != null) {
			return units;
		}
		return null;
	}

	public Unit findUnitById(Object value) {
		String hql = "from Unit where IKey = ?";
		return unitDao.find(hql, value).get(0);
	}

	@Override
	public boolean modifyService(Unit iService){
				unitDao.update(iService);
				unitDao.flush();				
				return true;

	}

	@Override
	public boolean addService(Unit iService) {
		try {
			unitDao.save(iService);
			unitDao.flush();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delService(Unit iService) {
		unitDao.delete(iService);
		unitDao.flush();
		return true;
	}
}
