package com.jes.wms.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.jes.wms.web.beans.Group;
import com.jes.wms.dao.IBaseDao;
import com.jes.wms.dao.impl.BaseDao;

public class GroupImpl extends BaseImpl<Group> {
	private IBaseDao<Group, Integer> groupDao;

	public void setGroupDao(BaseDao<Group, Integer> dao) {
		this.groupDao = dao;
	}

	@Override
	public int queryResultsCount() {
		String hql = "from Group";
		List<Group> myGroup = Collections.emptyList();
		try {
			myGroup = groupDao.find(hql);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (myGroup != null)
			return myGroup.size();
		return 0;
	}

	@Override
	public List<Group> queryByPage(int from, int length) {
		List<Group> groups = Collections.emptyList();
		String hql = "from Group where IKey between ? and ? ";
		Object[] values = { from, length };
		try {
			groups = groupDao.find(hql, values);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (groups != null)
			return groups;
		return null;
	}
	
	@Override
	public boolean addService(Group iService) {
		// TODO Auto-generated method stub
		try {
			groupDao.save(iService);
			groupDao.flush();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean modifyService(Group iService) {
		// TODO Auto-generated method stub
		try {
			groupDao.update(iService);
			groupDao.flush();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delService(Group iService) {
		// TODO Auto-generated method stub
		try {
			groupDao.update(iService);
			groupDao.flush();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
