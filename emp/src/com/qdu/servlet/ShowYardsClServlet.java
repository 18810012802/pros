package com.qdu.servlet;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qdu.model.*;
import com.qdu.struts.form.StuForm;
import com.qdu.struts.form.UserForm;
/**
 * Servlet implementation class ShowGoodsClServlet
 */
@WebServlet("/ShowGoodsClServlet")
public class ShowYardsClServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowYardsClServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		String type=request.getParameter("type");
		if(type.equals("showDetail")){
			String yno=request.getParameter("yno");
			//System.out.println("id="+goodId);
			YardBO ybb=new YardBO();
			String pageNow=request.getParameter("pageNow");
			request.setAttribute("abc",pageNow);
			YardBean yb=ybb.getYardsBean(yno);
			request.setAttribute("yardsInfo", yb);
			request.getRequestDispatcher("WEB-INF/showDetail.jsp").forward(request,response);
		}
		else if(type.equals("fenye")){
			String pageNow=request.getParameter("pageNow");
			request.setAttribute("abc",pageNow);
			request.getRequestDispatcher("/WEB-INF/main.jsp").forward(request,response);
		
		
		}else if(type.equals("showRules")){
			
			request.getRequestDispatcher("/WEB-INF/showRules.jsp").forward(request,response);
		
		
		}else if(type.equals("showPunish")){
			
			request.getRequestDispatcher("/WEB-INF/showPunish.jsp").forward(request,response);
		
		
		}else if(type.equals("showMain")){
			
			request.getRequestDispatcher("/WEB-INF/main.jsp").forward(request,response);
		
		
		}else if(type.equals("downloadImage"))
		{
			request.getRequestDispatcher("/WEB-INF/downList.jsp").forward(request,response);

		}else if(type.equals("loginInfo"))
		{
			UserForm uf=(UserForm)request.getSession().getAttribute("userForm");
			if(uf==null)
			{
				request.getRequestDispatcher("/loginUI.jsp").forward(request,response);
			
				//return mapping.findForward("loginUI");
			}else{
				
				String type1=uf.getType();
				if(type1.equals("manager")){
					userBO ubb=new userBO();
					UserForm uf1=ubb.getUserForm(uf.getUserno());
					request.setAttribute("uf",uf1);
					request.getRequestDispatcher("/manager.jsp").forward(request,response);
					//return mapping.findForward("manager");
				}else if(type.equals("student"))
				//System.out.println((String)session.getAttribute("userno"));
				{
					StuBO sbb=new StuBO();
					StuForm sf=sbb.getStuBean(uf.getUserno());
					request.setAttribute("sf",sf);
					request.getRequestDispatcher("/student.jsp").forward(request,response);
					//return mapping.findForward("student");
				}
	
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	this.doGet(request, response);
	}

}
