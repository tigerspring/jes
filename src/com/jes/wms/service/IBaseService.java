package com.jes.wms.service;

import java.util.List;

public interface IBaseService<T> {
	public abstract int queryResultsCount();  
	public abstract List<T> queryByPage(int from, int length);
    public abstract boolean modifyService(T iService);
    public abstract boolean addService(T iService);
    public abstract boolean delService(T iService);
    public abstract List<T> Login(T iService);

}
