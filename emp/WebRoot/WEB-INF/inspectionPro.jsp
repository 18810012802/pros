<%@ page language="java" import="java.util.*,java.io.*,com.qdu.model.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%@ page contentType="text/xml; charset=utf-8"%>
<%
            response.setCharacterEncoding("utf-8");
	        response.setContentType("text/xml");  
	        response.setHeader("Cache-Control", "no-store"); 
	     
	        response.setHeader("Pragma", "no-cache");  
	        response.setDateHeader("Expires", 0);  
            String yno = request.getParameter("yno");  
	        String info="";	            
		    //String str = "print me1";
			//String File = "C:/Users/Administrator/Workspaces/MyEclipse 10/emp/WebRoot/test.txt";
		    //PrintWriter pw = new PrintWriter(new FileOutputStream(File));
		    // pw.println(str);
		    // pw.close();
		     String bno = request.getParameter("bno");  
		      String dormno = request.getParameter("dormno");   
		     if(yno!=null&&bno==null&&dormno==null)
		     {   
		       
	             InspectBO ib=new InspectBO();
	             ArrayList al=ib.getBnoByYno(yno);
	             info+="<yno>";
	            	for(int i=0;i<al.size();i++)
	            	{
	            	InspectForm iff=(InspectForm)al.get(i);
	            	info+="<bno>"+iff.getBno()+"</bno>";
	            	
	            	}
	           // info="<yno><bno>1</bno><bno>2</bno></yno>";
	           info+="</yno>";
	                 
	            }  
	           
			           
			 else if(bno!=null && yno!=null && dormno!=null)
		     {   InspectBO ib=new InspectBO();
	             ArrayList al=ib.getDormnoByBno(yno,bno);
	             info+="<bno>";
	            	for(int i=0;i<al.size();i++)
	            	{
	            	InspectForm iff=(InspectForm)al.get(i);
	            	info+="<dormno>"+iff.getDormno()+"</dormno>";
	            	
	            	}
	           // info="<yno><bno>1</bno><bno>2</bno></yno>";
	           info+="</bno>";
			 } else if(dormno==null&&bno!=null&&yno!=null)
		     {   
		        
			              	
				            info="<dormno><bedno>1</bedno><bedno>2</bedno></dormno>";
				             // info="<dormno>2</dormno>";
				                 
				           
			     
			           
			 } 
			 out.write(info); 
			     
			          
		        
		         
	           
	       

%> 

