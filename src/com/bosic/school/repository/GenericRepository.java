package com.bosic.school.repository;

import java.util.List;

/**
 * 通用的数据访问接口
 */
public interface GenericRepository<T, PK> {
	// 新增
	void add(T t);
	// 修改（编辑）
	void update(T t);
	// 删除
	void delete(PK id);
	// 批量删除
	void delete(PK[] ids);
	
	// 根据id查找一个记录
	T find(PK id);
	// 根据条件查找一条记录
	T find(String where, Object...params);
	
	// 查找所有记录
	List<T> findAll(String where, String orderBy, Object... params);
	
	// 根据条件获取数据总数
	long totalCount(String where, Object...params);
	
	// 根据条件（排序）获取一页数据
	List<T> findPage(int pageIndex, int pageSize, String where, String orderby, Object...params);
}
