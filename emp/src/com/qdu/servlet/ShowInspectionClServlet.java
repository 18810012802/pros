package com.qdu.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ShowInspectionClServlet extends HttpServlet {

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

		
		    response.setCharacterEncoding("utf-8");
	        response.setContentType("text/html");  
	        response.setHeader("Cache-Control", "no-store"); 
	        PrintWriter out = response.getWriter(); 
	        response.setHeader("Pragma", "no-cache");  
	        response.setDateHeader("Expires", 0);  
	        String datetime = request.getParameter("datetime");  
	        String info="";	            
		    String str = "print me2";
			String File = "C:/Users/Administrator/Workspaces/MyEclipse 10/emp/WebRoot/test.txt";
		         try 
		         {
			         PrintWriter pw = new PrintWriter(new FileOutputStream(File));
			         pw.println(str);
			         pw.close();
		         } 
		         catch(Exception e) 
		         {
		        	e.printStackTrace();
		         } 
		         finally 
			        { 
			           // out.close();  
			        }
		         
	           if(datetime.equals("1")) 
	             
	           { 	
	            	info="1,2,3";
	                 
	            }  
	            else if(datetime.equals("2")) 
	            {  
	            	info="1,2,3";
 
	            }  
	            out.write(info); 
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

		this.doGet(request,response);
	}

}
