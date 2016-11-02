<%@ page language="java" import="java.util.*,java.io.*,com.qdu.model.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%@ page contentType="text/xml; charset=utf-8"%>
<%
            response.setCharacterEncoding("utf-8");
	        response.setContentType("text/xml");  
	        response.setHeader("Cache-Control", "no-store"); 
	     
	        response.setHeader("Pragma", "no-cache");  
	        response.setDateHeader("Expires", 0);  
            String yno = request.getParameter("yno");  
             String dormno = request.getParameter("dormno");  
	        String info="";	            
		    //String str = "print me1";
			//String File = "C:/Users/Administrator/Workspaces/MyEclipse 10/emp/WebRoot/test.txt";
		    //PrintWriter pw = new PrintWriter(new FileOutputStream(File));
		    // pw.println(str);
		    // pw.close();
		     String bno = request.getParameter("bno");   
		     if(yno!=null&&bno==null)
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
	           
			           
			 else if(bno!=null&&yno!=null&&dormno==null)
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
			 } else if(bno!=null&&yno!=null&&dormno!=null)
		     {   
		        StuBO sb=new StuBO();
		        ArrayList al=sb.getStuFormByDorm(yno, bno, dormno);
		        info+="<dormno>";
		        String s[]={"<bedno>1</bedno>","<bedno>2</bedno>","<bedno>3</bedno>","<bedno>4</bedno>","<bedno>5</bedno>","<bedno>6</bedno>"};
			         for(int i=0;i<al.size();i++)  
				         {
				         StuForm sf=(StuForm)al.get(i);
				        /*  if(i==1)
				         {
				         String File = "C:/Users/Administrator/Workspaces/MyEclipse 10/emp/WebRoot/test.txt";
		    PrintWriter pw = new PrintWriter(new FileOutputStream(File));
		     pw.println(sf.getBedno());
		     pw.close();} */
					         for(int j=1;j<=6;j++)
					         {
					         String b=j+"";
					         
				       
						          if(b.equals(sf.getBedno()))
						          {
						          s[j-1]="";
						          }
						          
					         }
					         
			              }
			         for(int i=0;i<s.length;i++)
			         {
			        	info+=s[i];
			         } 
				          
				           // info="<dormno><bedno>3</bedno></dormno>";
				   info+="</dormno>";              
				           
			     
			           
			 } 
			 out.write(info); 
			     
			          
		        
		         
	           
	       

%> 

