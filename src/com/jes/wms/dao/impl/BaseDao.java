package com.jes.wms.dao.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;

import org.hibernate.LockMode;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.jes.wms.dao.IBaseDao;

@Repository
public class BaseDao<T, ID extends Serializable> extends HibernateDaoSupport
		implements IBaseDao<T, ID> {

	private Class<T> entityClass;

	public Class<T> getEntityClass() {
		return entityClass;
	}

	public void setEntityClass(Class<T> entityClass) {
		this.entityClass = entityClass;
	}	
	
/*	@SuppressWarnings("unused")
	@Autowired
	public void getSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}*/
	

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public BaseDao() {
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

	public void saveOrUpdate(T t) throws DataAccessException {
		this.getHibernateTemplate().saveOrUpdate(t);
	}

	public T load(ID id) throws DataAccessException {
		T load = (T) getHibernateTemplate().load(getEntityClass(), id);
		return load;
	}

	public T get(ID id) throws DataAccessException {
		T load = (T) getHibernateTemplate().get(getEntityClass(), id);
		return load;
	}

	public boolean contains(T t) throws DataAccessException {
		return getHibernateTemplate().contains(t);
	}

	public void delete(T t, LockMode lockMode) throws DataAccessException {
		getHibernateTemplate().delete(t, lockMode);
	}

	public void delete(T t) throws DataAccessException {
		getHibernateTemplate().delete(t);
	}

	public void deleteAll(Collection<T> entities) throws DataAccessException {
		getHibernateTemplate().deleteAll(entities);
	}

	@SuppressWarnings("unchecked")
	public List<T> find(String queryString, Object value)
			throws DataAccessException {
		List<T> find = (List<T>) getHibernateTemplate()
				.find(queryString, value);
		return find;
	}

	@SuppressWarnings("unchecked")
	public List<T> find(String queryString, Object[] values)
			throws DataAccessException {
		List<T> find = (List<T>) getHibernateTemplate().find(queryString,
				values);
		return find;
	}

	@SuppressWarnings("unchecked")
	public List<T> find(String queryString) throws DataAccessException {
		List<T> find = (List<T>) getHibernateTemplate().find(queryString);
		return find;
	}

	public void refresh(T t, LockMode lockMode) throws DataAccessException {
		getHibernateTemplate().refresh(t, lockMode);
	}

	public void refresh(T t) throws DataAccessException {
		getHibernateTemplate().refresh(t);
	}

	public Serializable save(T t) throws DataAccessException {
		return super.getHibernateTemplate().save(t);
	}

	public void saveOrUpdateAll(Collection<T> entities)
			throws DataAccessException {
		getHibernateTemplate().saveOrUpdateAll(entities);
	}

	public void update(T t, LockMode lockMode) throws DataAccessException {
		getHibernateTemplate().update(t, lockMode);
	}

	public void update(T t) throws DataAccessException {
		getHibernateTemplate().update(t);
	}

	public List<T> list() throws DataAccessException {
		return getHibernateTemplate().loadAll(getEntityClass());

	}

	@SuppressWarnings("unchecked")
	public List<T> findByNamedQuery(String queryName)
			throws DataAccessException {
		return getHibernateTemplate().findByNamedQuery(queryName);
	}

	@SuppressWarnings("unchecked")
	public List<T> findByNamedQuery(String queryName, Object value)
			throws DataAccessException {
		return getHibernateTemplate().findByNamedQuery(queryName, value);
	}

	@SuppressWarnings("unchecked")
	public List<T> findByNamedQuery(String queryName, Object[] values)
			throws DataAccessException {
		return getHibernateTemplate().findByNamedQuery(queryName, values);
	}

	public void flush() throws DataAccessException {
		getHibernateTemplate().flush();
	}

}
