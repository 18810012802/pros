package com.mql.basic;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.mql.domain.Employee;
@Transactional
public abstract class BasicService implements BasicServiceInter {
	@Resource
	public SessionFactory sessionFactory;
	@Override
	public Object findById(Class clazz, Serializable id) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(clazz,id);
	}

	@Override
	public List executeQuery(String hql, Object[] parameters) {
		// TODO Auto-generated method stub
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		if(parameters!=null&&parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				query.setParameter(i,parameters[i]);
			}
		}
		return query.list();
	}

	@Override
	public List executeQueryByPage(String hql, Object[] parameters, int pageNow,int pageSize) {
		// TODO Auto-generated method stub
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		if(parameters!=null&&parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				query.setParameter(i,parameters[i]);
			}
		}
		return query.setFirstResult((pageNow-1)*pageSize).setMaxResults(pageSize).list();
		
		
	}

	@Override
	public void add(Object obj) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(obj);
	}

	@Override
	public List executeUpdate(String hql, Object[] parameters) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Object uniqueQuery(String hql,Object[] parameters){
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		if(parameters!=null&&parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				query.setParameter(i,parameters[i]);
			}
		}
		return query.uniqueResult();
	}
	@Override
	public int queryPageCount(String hql,Object[] parameters,int pageSize){
		Object obj=uniqueQuery(hql,parameters);
		int rowCount=Integer.parseInt(obj.toString());
		return (rowCount-1)/pageSize+1;
	}
	@Override
	public void delById(Class clazz,java.io.Serializable id){
		sessionFactory.getCurrentSession().delete((Employee)this.findById(clazz,id));
	}
	@Override
	public void update(Object object){
		sessionFactory.getCurrentSession().update(object);
	}

}
