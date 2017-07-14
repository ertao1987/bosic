package com.bosic.school.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bosic.school.repository.GenericRepository;
import com.bosic.school.service.GenericService;
import com.bosic.school.service.PagedList;

@Transactional
public class GenericServiceImpl<T, PK extends Serializable> implements GenericService<T, PK> {
	@Autowired
	protected GenericRepository<T, PK> genericRepository;
	
	@Override
	public void add(T t) {
		genericRepository.add(t);
	}

	@Override
	public void update(T t) {
		genericRepository.update(t);
	}

	@Override
	public void delete(PK id) {
		genericRepository.delete(id);
	}
	
	public void delete(PK[] ids) {
		for(PK id : ids){
			genericRepository.delete(id);
		}
	}
	
	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED, readOnly=true)
	public T find(PK id) {
		return genericRepository.find(id);
	}

	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED, readOnly=true)
	public T find(String where, Object...params) {
		return genericRepository.find(where, params);
	}

	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED, readOnly=true)
	public List<T> findAll() {
		return findAll("", "");
	}

	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED, readOnly=true)
	public List<T> findAll(String where, String orderBy, Object...params) {
		return genericRepository.findAll(where, orderBy, params);
	}
	
	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED, readOnly=true)
	public PagedList<T> findPage(int pageIndex, int pageSize) {
		return findPage(pageIndex, pageSize, "", "");
	}
	
	@Override
	@Transactional(propagation=Propagation.NOT_SUPPORTED, readOnly=true)
	public PagedList<T> findPage(int pageIndex, int pageSize, String where,
			String orderBy, Object... params) {
		long totalCount = genericRepository.totalCount(where, params);
		List<T> pages = genericRepository.findPage(pageIndex, pageSize, where, orderBy, params);
		
		return new PagedList<T>(pageIndex, pageSize, totalCount, pages);
	}
}
