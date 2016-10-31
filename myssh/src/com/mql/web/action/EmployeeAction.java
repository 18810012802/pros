package com.mql.web.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.mql.domain.Department;
import com.mql.domain.Employee;
import com.mql.service.interfaces.DepartmentServiceInter;
import com.mql.service.interfaces.EmployeeServiceInter;
import com.mql.web.forms.EmployeeForm;

public class EmployeeAction extends DispatchAction {
	@Resource(name="employeeService")
	private EmployeeServiceInter employeeService;
	@Resource(name="departmentService")
	private DepartmentServiceInter departmentService;


public void setEmployeeService(EmployeeServiceInter employeeService) {
		this.employeeService = employeeService;
	}
	public void setDepartmentService(DepartmentServiceInter departmentService) {
		this.departmentService = departmentService;
	}
public ActionForward addEmpUi(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response) throws Exception{
		
	
		return mapping.findForward("goAddEmpUi");
	}
public ActionForward add(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response) throws Exception{
	
	EmployeeForm employeeForm=(EmployeeForm)form;
	Employee employee=new Employee();
	employee.setEmail(employeeForm.getEmail().toString());
	employee.setGrade(Integer.parseInt(employeeForm.getGrade()));
	employee.setHiredate(new java.util.Date());
	employee.setName(employeeForm.getName());
	employee.setPwd(employeeForm.getPwd());
	employee.setSalary(Float.parseFloat(employeeForm.getSalary()));
	employee.setDepartment((Department)departmentService.findById(Department.class,Integer.parseInt(employeeForm.getDepartment())));
	try {
		employeeService.add(employee);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return mapping.findForward("opererr");
	}
	return mapping.findForward("operok");
}
public ActionForward goListEmp(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response) throws Exception{
	int pageCount=employeeService.getPageCount(3);
	String pageNow_s=request.getParameter("pageNow");
	int pageNow=1;
	
	if(pageNow_s!=null){
		pageNow=Integer.parseInt(pageNow_s);
	}
	request.setAttribute("emplist",employeeService.showEmployeeList(pageNow,3));
	request.setAttribute("pageCount",pageCount);
	return mapping.findForward("goListEmp");
}
public ActionForward delEmp(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response) throws Exception{
	String id=request.getParameter("id");
	try {
		employeeService.delById(Employee.class,Integer.parseInt(id));
	} catch (Exception e) {
		e.printStackTrace();
		// TODO Auto-generated catch block
		return mapping.findForward("opererr");
	}
	return mapping.findForward("operok");
}
public ActionForward goUpdEmpUi(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response) throws Exception{
	String id=request.getParameter("id");
	
	Employee e=(Employee)employeeService.findById(Employee.class,Integer.parseInt(id));
	request.setAttribute("employee",e);
	return mapping.findForward("goUpdEmpUi");
}
public ActionForward updEmp(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response) throws Exception{
EmployeeForm ef=(EmployeeForm)form;
Employee employee=new Employee();
employee.setId(Integer.parseInt(ef.getId()));
employee.setName(ef.getName());
employee.setGrade(Integer.parseInt(ef.getGrade()));
employee.setPwd(ef.getPwd());
employee.setSalary(Float.parseFloat(ef.getSalary()));
employee.setDepartment((Department)departmentService.findById(Department.class,Integer.parseInt(ef.getId())));
try {
	employeeService.update(employee);
} catch (Exception e) {
	// TODO Auto-generated catch block
	return mapping.findForward("opererr");
}
return mapping.findForward("operok");

}
public ActionForward queryEmployeeUi(ActionMapping mapping,ActionForm form,HttpServletRequest request,HttpServletResponse response) throws Exception{
	int pageCount=employeeService.getPageCount(3);
	String pageNow_s=request.getParameter("pageNow");
	int pageNow=1;
	
	if(pageNow_s!=null){
		pageNow=Integer.parseInt(pageNow_s);
	}
	List<Employee> l=null;
	if(form!=null){
		EmployeeForm e=(EmployeeForm)form;
		l=employeeService.showEmployeeListByparams(pageNow,e,3);
	}else{
		l=employeeService.showEmployeeList(pageNow,3);
	}
	
	request.setAttribute("emplist",employeeService.showEmployeeList(pageNow,3));
	request.setAttribute("pageCount",pageCount);
	return mapping.findForward("queryEmployeeUi");
}

}
