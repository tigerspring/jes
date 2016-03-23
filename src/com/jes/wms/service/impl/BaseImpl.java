package com.jes.wms.service.impl;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
//import com.jes.wms.dao.IBaseDao;
import com.jes.wms.service.IBaseService;

public abstract class BaseImpl<T> implements IBaseService<T> {
//	private IBaseDao<T, Integer> baseDao;
	private Class<T> entityClass;
	
	/*public void setBaseDao(IBaseDao<T, Integer> baseDao){
		 this.baseDao = baseDao;
	}*/
	
	public Class<T> getEntityClass() {
		return entityClass;
	}

	public void setEntityClass(Class<T> entityClass) {
		this.entityClass = entityClass;
	}
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public BaseImpl(){
		if (entityClass == null) {
			this.entityClass = null;
			Class c = getClass();
			Type t = c.getGenericSuperclass();
			if (t instanceof ParameterizedType) {
				Type[] p = ((ParameterizedType) t).getActualTypeArguments();
				this.entityClass = (Class<T>) p[0];
			}
		}
	}

	@Override
	public List<T> Login(T iService) {
		// TODO Auto-generated method stub
		return null;
	}
   
}
