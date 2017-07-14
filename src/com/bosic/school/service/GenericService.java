package com.bosic.school.service;

import java.io.Serializable;
import java.util.List;

public interface GenericService<T, PK extends Serializable> {
	public void add(T t);
	public void update(T t);
	public void delete(PK id);
	public void delete(PK[] ids);
	
	public T find(PK id);
	public T find(String where, Object...params);

	public List<T> findAll();
	public List<T> findAll(String where, String orderBy, Object...params);
	
	public PagedList<T> findPage(int pageIndex, int pageSize);
	
	public PagedList<T> findPage(int pageIndex, int pageSize, String where, String orderBy, Object...params);
}
