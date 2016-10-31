package com.mql.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.mql.aop.TestServiceInter;
import com.mql.aop.TestServiceInter2;

public class Test {
	/*public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		SessionFactory sf=(SessionFactory)ac.getBean("sessionFactory");
		Session s=sf.openSession();
		Employee employee=new Employee("aa","17@163.com","145",1,new java.util.Date(),234.56f);
		Employee employee2=new Employee("bb","17@163.com","145",1,new java.util.Date(),234.56f);
		Employee employee3=new Employee("cc","17@163.com","145",1,new java.util.Date(),234.56f);
		Department d1=new Department("²ÆÎñ²¿");
		Set<Employee> sets=new HashSet<Employee>();
		sets.add(employee);
		sets.add(employee2);
		sets.add(employee3);
		d1.setEmps(sets);
		
		DepartmentServiceInter departmentService=(DepartmentServiceInter)ac.getBean("departmentService");
		departmentService.addDepartment(d1);
		Transaction t=s.beginTransaction();
		s.save(employee);
		t.commit();
		EmployeeServiceInter esi=(EmployeeServiceInter)ac.getBean("employeeService");
		esi.addEmployee(employee);
		esi.addEmployee(employee2);
		esi.addEmployee(employee3);
		
		
	}
*/
	public static void main(String[] args) {
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		TestServiceInter p=(TestServiceInter)ac.getBean("proxyFactoryBean");
		p.sayHello();
		((TestServiceInter2)p).sayHello2();
		
	}
}
