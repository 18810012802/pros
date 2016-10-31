package com.mql.service.imp;

import java.io.Serializable;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.mql.basic.BasicService;
import com.mql.domain.Department;
import com.mql.service.interfaces.DepartmentServiceInter;
@Transactional
public class DepartmentService extends BasicService implements DepartmentServiceInter {

/*	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;*/
	@Override
	public void addDepartment(Department d) {
		// TODO Auto-generated method stub
		try {
			sessionFactory.getCurrentSession().save(d);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public Department getDepartmentById(Serializable id) {
		// TODO Auto-generated method stub
		return (Department)sessionFactory.getCurrentSession().get(Department.class,id);
		
	}

}
