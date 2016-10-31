package com.mql.service.imp;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.mql.basic.BasicService;
import com.mql.domain.Employee;
import com.mql.service.interfaces.EmployeeServiceInter;
import com.mql.web.forms.EmployeeForm;
@Transactional
public class EmployeeService extends BasicService implements EmployeeServiceInter {
	/*@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
*/
	@Override
	public List showEmployeeList(int pageNow,int pageSize){
		String hql="from Employee order by id";
		//return executeQuery(hql,null);
		return executeQueryByPage(hql,null,pageNow,pageSize);
	}
	@Override
	public List showEmployeeListByparams(int pageNow,EmployeeForm e,int pageSize){
		StringBuffer hql=new StringBuffer("from Employee");
		
		StringBuffer where=new StringBuffer();
		
		List list=new ArrayList();
		if(e.getName()!=null&&!"".equals(e.getName())){
			hql.append(" and name=? ");
			list.add(e.getName());
		}
		if(e.getEmail()!=null&&!"".equals(e.getEmail())){
			hql.append(" and email=? ");
			list.add(e.getEmail());
		}
		if(e.getGrade()!=null&&!"".equals(e.getGrade())){
			hql.append(" and grade=? ");
			list.add(Integer.parseInt(e.getGrade()));
		}
		if(e.getDepartment()!=null&&!"".equals(e.getDepartment())){
			hql.append(" and department=? ");
			list.add(Integer.parseInt(e.getDepartment()));
		}
		Object[] parameters=new Object[list.size()];
		for(int i=0;i<list.size();i++){
			parameters[i]=list.get(i);
		}
		hql.append(" order by id");
		//return executeQuery(hql,null);
		return executeQueryByPage(hql.toString(),parameters,pageNow,pageSize);
	}
	
	public int getPageCount(int pageSize){
		String hql="select count(*) from Employee";
		return queryPageCount(hql,null,pageSize);
		
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addEmployee(Employee e) {
		// TODO Auto-generated method stub
		Session s=sessionFactory.getCurrentSession();
		s.save(e);
	}

	@Override
	public List<Employee> showEmployee() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updEmployee(Employee e) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delEmployee(Serializable id) {
		// TODO Auto-generated method stub

	}

	@Override
	public Employee checkEmployee(Employee e) {
		// TODO Auto-generated method stub
		String hql="from Employee where id=? and pwd=?";
	
		/*List<Employee> list=sessionFactory.getCurrentSession().createQuery(hql).setString(0,e.getId()+"").setString(1,e.getPwd()).list();
		Hibernate.initialize(Department.class); 
		if(list.size()==1){
			Employee e1=list.get(0);
			//System.out.println(e1.getDepartment().getName());
			return list.get(0);
		}else{
			return null;
		}*/
		Object[] parameters={e.getId(),e.getPwd()};
		List<Employee> list=this.executeQuery(hql,parameters);
		if(list.size()==1){
			Employee e1=list.get(0);
			//System.out.println(e1.getDepartment().getName());
			return list.get(0);
		}else{
			return null;
		}
	}

}
