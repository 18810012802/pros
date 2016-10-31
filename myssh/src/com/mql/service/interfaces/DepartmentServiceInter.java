package com.mql.service.interfaces;

import com.mql.basic.BasicServiceInter;
import com.mql.domain.Department;

public interface DepartmentServiceInter extends BasicServiceInter {
	public void addDepartment(Department d);
	public Department getDepartmentById(java.io.Serializable id);
}
