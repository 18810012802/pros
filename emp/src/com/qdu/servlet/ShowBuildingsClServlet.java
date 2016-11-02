package com.qdu.servlet;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qdu.model.*;
/**
 * Servlet implementation class ShowGoodsClServlet
 */
@WebServlet("/ShowGoodsClServlet")
public class ShowBuildingsClServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowBuildingsClServlet() {
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
		 if(type.equals("fenye")){
			 String yno=request.getParameter("yno");
				//System.out.println("id="+goodId);
				YardBO ybb=new YardBO();
				
				YardBean yb=ybb.getYardsBean(yno);
				request.setAttribute("yardsInfo", yb);
				
			String pageNow=request.getParameter("pageNow");
			request.setAttribute("abc",pageNow);
			request.getRequestDispatcher("WEB-INF/showDetail.jsp").forward(request,response);
		
		
		}else if(type.equals("update"))
		{
			String yno=request.getParameter("yno");
			String buildingno=request.getParameter("buildingno");
			BuildingBO bbb=new BuildingBO();
		    BuildingBean bb=bbb.getBuildingsBean(yno, buildingno);
		    request.setAttribute("buildingInfo", bb);
			request.getRequestDispatcher("WEB-INF/updateBuildingInfo.jsp").forward(request,response);
		}else if(type.equals("delete"))
		{
			String yno=request.getParameter("yno");
			String buildingno=request.getParameter("buildingno");
			BuildingBO bbb=new BuildingBO();
		   bbb.deleteBuilding(yno, buildingno);
		   
		   
		   
			//System.out.println("id="+goodId);
			YardBO ybb=new YardBO();
			String pageNow=request.getParameter("pageNow");
			request.setAttribute("abc",pageNow);
			YardBean yb=ybb.getYardsBean(yno);
			request.setAttribute("yardsInfo", yb);
			request.getRequestDispatcher("WEB-INF/showDetail.jsp").forward(request,response);
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
