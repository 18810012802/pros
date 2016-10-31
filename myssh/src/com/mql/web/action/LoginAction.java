package com.mql.web.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.mql.domain.Employee;
import com.mql.service.interfaces.EmployeeServiceInter;
import com.mql.web.forms.EmployeeForm;

public class LoginAction extends DispatchAction {
	@Resource(name="employeeService")
	private EmployeeServiceInter employeeService;
	public ActionForward login(ActionMapping mapping,ActionForm arg1,HttpServletRequest request,HttpServletResponse arg3) throws Exception{
		EmployeeForm ef=(EmployeeForm)arg1;
		/*if("123".equals(ef.getPwd())){
			return mapping.findForward("ok");
		}else{
			return mapping.findForward("err");
		}
		
*/		//WebApplicationContext ctx=WebApplicationContextUtils.getWebApplicationContext(this.getServlet().getServletContext());
		//EmployeeServiceInter es=(EmployeeServiceInter)ctx.getBean("employeeService");
		Employee e=new Employee();
		e.setId(Integer.parseInt(ef.getId()));
		e.setPwd(ef.getPwd());
		e=employeeService.checkEmployee(e);
		if(e!=null){
			request.getSession().setAttribute("loginuser",e);
			return mapping.findForward("ok");
		}else{
			return mapping.findForward("err");
		}
	}

	public ActionForward goMainFrame(ActionMapping mapping,ActionForm arg1,HttpServletRequest request,HttpServletResponse arg3) throws Exception{
		if(request.getSession().getAttribute("loginuser")!=null){
			return mapping.findForward("ok"); 
		}else{
			return mapping.findForward("err");
		}
	
	}
	public ActionForward logout(ActionMapping mapping,ActionForm arg1,HttpServletRequest request,HttpServletResponse arg3) throws Exception{
		if(request.getSession().getAttribute("loginuser")!=null){
			request.getSession().removeAttribute("loginuser");
		}
		//request.getSession().invalidate();
		return mapping.findForward("err");
		
	
	}
}
