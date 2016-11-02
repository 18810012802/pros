package com.qdu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qdu.model.YardBO;
import com.qdu.model.YardBean;

public class ShowStuClServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out=response.getWriter();
		String type=request.getParameter("type");
		if(type.equals("step")){
			YardBO ybb=new YardBO();
			int pageNow=1;
			int pageSize=6;
			String s_pageNow=request.getParameter("pageNow");
			if(s_pageNow!=null)
			{
			pageNow=Integer.parseInt(s_pageNow);
			}
			ArrayList<YardBean> al=ybb.getYardsByPage(pageSize, pageNow);
			int pageCount=ybb.getPageCount(pageSize);
			
			
			String[] p={pageCount+""};
			request.setAttribute("al", al);
			request.setAttribute("pageCount", p);
			
			request.getRequestDispatcher("WEB-INF/step1.jsp").forward(request,response);
		}
		
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
