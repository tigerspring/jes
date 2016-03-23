package com.jes.wms.service.impl;

import java.util.Collections;
import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.dao.DataAccessException;

import com.jes.wms.dao.IBaseDao;
import com.jes.wms.web.beans.Staff;


public class StaffImpl extends BaseImpl<Staff>{
	private IBaseDao<Staff,Integer> staffDao;
	
	public void setStaffDao(IBaseDao<Staff,Integer> dao){
		this.staffDao = dao;
	}
    public StaffImpl(){
    	
    }
    
    @Override
	public List<Staff> Login(Staff staff) throws HibernateException{
	
		String username = staff.getName();
		String password = staff.getPwd();
		Object[] value = {username, password };	
		String hql = "from Staff where Staff_Name=? and Pwd=?";
		List<Staff> myStaff = Collections.emptyList();
		try {
			myStaff = staffDao.find(hql,value);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return myStaff;
	}
	@Override
	public int queryResultsCount() {
		String hql = "from Staff";
		List<Staff> myStaff = Collections.emptyList();
		try {
			myStaff = staffDao.find(hql);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (myStaff != null)
			return myStaff.size();
		return 0;
	}
	@Override
	public List<Staff> queryByPage(int from, int length) {
		List<Staff> staffs = Collections.emptyList();
		String hql = "from Staff where IKey between ? and ? and status=1 ";
		Object[] values = { from, length };
		try {
			staffs = staffDao.find(hql, values);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (staffs != null)
			return staffs;
		return null;
	}
	@Override
	public boolean modifyService(Staff iService) {
		// TODO Auto-generated method stub
		try {
			staffDao.update(iService);
			staffDao.flush();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public boolean addService(Staff iService) {
		// TODO Auto-generated method stub
		try {
			staffDao.save(iService);
			staffDao.flush();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Override
	public boolean delService(Staff iService) {
		// TODO Auto-generated method stub
		try {
			iService = staffDao.get(iService.getId());
			iService.setStatus(false);
			staffDao.update(iService);
			staffDao.flush();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

    
    

	
}