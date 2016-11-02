/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.qdu.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.qdu.model.BuildingBO;
import com.qdu.model.BuildingBean;
import com.qdu.struts.form.BuildingForm;

/** 
 * MyEclipse Struts
 * Creation date: 04-13-2015
 * 
 * XDoclet definition:
 * @struts.action path="/updateBuilding" name="buildingForm" scope="request"
 * @struts.action-forward name="err" path="/WEB-INF/err.jsp" redirect="true"
 * @struts.action-forward name="ok" path="/WEB-INF/ok.jsp" redirect="true"
 */
public class UpdateBuildingAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		BuildingForm buildingForm = (BuildingForm) form;// TODO Auto-generated method stub
		BuildingBO bbb=new BuildingBO();
		String type=request.getParameter("ssfbt");
		//System.out.println(buildingForm.getType()+"--"+buildingForm.getYno()+"--"+buildingForm.getBuildingno());
		if(bbb.updateTypeOfBuilding(buildingForm.getType(),buildingForm.getYno(),buildingForm.getBuildingno()))
		{
			BuildingBean bb=new BuildingBean();
			bb.setBno(buildingForm.getBuildingno());
			bb.setYno(buildingForm.getYno());
			bb.setType(buildingForm.getType());
			bb.setRoomnum(buildingForm.getRoomnum());
			bb.setStunum(buildingForm.getStunum());
			bb.setLevelnum(buildingForm.getLevelnum());
			bb.setManager(buildingForm.getManager());
			bb.setPhone(buildingForm.getPhone());
			request.setAttribute("buildingInfo", bb);
			return mapping.findForward("ok");
		}else
		{
			return mapping.findForward("err");
		}
		
		
	}
}