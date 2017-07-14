package com.bosic.school.repository.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import com.bosic.school.repository.GenericRepository;

public class GenericRepositoryImpl<T, PK extends Serializable> implements GenericRepository<T, PK> {
	// clazz 代表实体类T的原型，主要想通过原型，获取类的类名，clazz.getSimpleName();
	private Class<T> clazz;

	@Autowired
	protected SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public GenericRepositoryImpl() {
		ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();

		clazz = (Class<T>) type.getActualTypeArguments()[0];
	}

	@Override
	public void add(T t) {
		// 新增
		// persist ----- 持久化
		// save ----- 保存
		sessionFactory.getCurrentSession().persist(t);
	}

	@Override
	public void update(T t) {
		// 修改
		// merge ----- 融合
		// update ----- 修改
		sessionFactory.getCurrentSession().merge(t);
	}

	@Override
	public void delete(PK id) {
		T t = sessionFactory.getCurrentSession().get(clazz, id);

		if (t != null) {
			sessionFactory.getCurrentSession().delete(t);
		}
	}

	@Override
	public void delete(PK[] ids) {
		for (PK id : ids) {
			delete(id);
		}
	}

	@Override
	public T find(PK id) {
		// 查找
		// get
		// load
		return (T) sessionFactory.getCurrentSession().get(clazz, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	// 使用示例：
	// User user = userRepository.find(" where u.id = ? ", 1);
	public T find(String where, Object... params) {
		Session session = sessionFactory.getCurrentSession();
		// 示例：
		// from User as u User.class
		// from Topic as u Topic.class
		// from News as u News.class
		String hql = "from " + clazz.getSimpleName() + " as u ";
		Query<?> query = session.createQuery(hql + " " + where);

		int i = 0;
		for (Object param : params) {
			query.setParameter(i++, param);
		}

		return (T) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll(String where, String orderBy, Object... params) {
		Session session = sessionFactory.getCurrentSession();
		// from User as u where u.username like ? order by u.id desc
		String hql = "from " + clazz.getSimpleName() + " as u ";
		Query<T> query = session.createQuery(hql + " " + where + " " + orderBy);

		int i = 0;
		for (Object param : params) {
			query.setParameter(i++, param);
		}

		return query.list();
	}

	public long totalCount(String where, Object... params) {
		Session session = sessionFactory.getCurrentSession();

		String hql = "select count(u) from " + clazz.getSimpleName() + " as u ";
		Query<?> query = session.createQuery(hql + " " + where);

		int i = 0;
		for (Object param : params) {
			query.setParameter(i++, param);
		}
		return (Long) query.uniqueResult();
	}

	@Override
	public List<T> findPage(int pageIndex, int pageSize, String where, String orderBy, Object... params) {
		Session session = sessionFactory.getCurrentSession();

		String hql = "from " + clazz.getSimpleName() + " as u ";
		@SuppressWarnings("unchecked")
		Query<T> query = session.createQuery(hql + " " + where + " " + orderBy);

		int i = 0;
		for (Object param : params) {
			query.setParameter(i++, param);
		}

		query.setFirstResult((pageIndex - 1) * pageSize);
		query.setMaxResults(pageSize);

		return query.list();
	}
}
