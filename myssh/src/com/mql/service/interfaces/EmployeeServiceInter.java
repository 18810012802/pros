package com.mql.service.interfaces;

import java.util.List;

import com.mql.basic.BasicServiceInter;
import com.mql.domain.Employee;
import com.mql.web.forms.EmployeeForm;

public interface EmployeeServiceInter extends BasicServiceInter{
	public List showEmployeeList(int pageNow,int pageSize);
	public void addEmployee(Employee e);
	public List<Employee> showEmployee();
	public void updEmployee(Employee e);
	public void delEmployee(java.io.Serializable id);
	public Employee checkEmployee(Employee e);
	public int getPageCount(int pageSize);
	public List showEmployeeListByparams(int pageNow,EmployeeForm e,int pageSize);
}
