package com.jes.wms.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.dao.DataAccessException;

import com.jes.wms.dao.impl.BaseDao;
import com.jes.wms.web.beans.Material;



public class MaterialImpl extends BaseImpl<Material>{
	private BaseDao<Material, Integer> materialDao;

	public void setMaterialDao(BaseDao<Material, Integer> materialDao) {
		this.materialDao = materialDao;
		
		
	}
	
	
	@Override
	public int queryResultsCount(){
		
		String hql="from Material";
		List<Material> myMaterial=Collections.emptyList();
		
		try {
			myMaterial = materialDao.find(hql);
		} catch (DataAccessException e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		if (myMaterial != null)
			return myMaterial.size();
		return 0;
		
		
	}
	
	@Override
	public List<Material> queryByPage(int from, int length) {
		List<Material> materials = Collections.emptyList();
		
		String hql = "from Material where IKey between ? and ?";
		Object[] values = { from, length };
		try {
			materials = materialDao.find(hql, values);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (materials != null)
			return materials;
		return null;
	}


	@Override
	public boolean modifyService(Material iService) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean addService(Material iService) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean delService(Material iService) {
		// TODO Auto-generated method stub
		return false;
	}

	
	
	
	
	
	
	
	


}
