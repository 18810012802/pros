<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 UserForm uf=(UserForm)request.getAttribute("uf"); 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/my.css">
	<style type="text/css">
	
	.elegant-aero {
	float:left;
	margin-left:0;
	margin-top:0;
	width:100%;
	max-width: 1100px;
	background: #D2E9FF;
	padding: 0px 0px 0px 0px;
	font: 12px Arial, Helvetica, sans-serif;
	color: #666;
	}
	.inside{width:80%;margin:0 auto;}
    #i7 { float:left;position:relative; width:780px; height:860px; overflow:hidden; margin:0 0 0 285; }  
    #i8 { position:absolute;width:780px;height:860px;}
    #i9 { float:left;position:relative; width:160px; height:880px; overflow:hidden; margin:0 0 0 0; }  
    #i10 { position:absolute;  }

	</style>


  </head>
  
 <body topmargin="0">
   <div id="i1"><div id="i2"><table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="head.jsp"></jsp:include></td>
  </tr>
 
     </table></div></div>
     <%--  <div id="i9"><div id="i10">
     
 <jsp:include flush="true" page="left.jsp"></jsp:include>
   </div></div> --%>
   
 <div id="i7"><div id="i8">
   
  <div class="elegant-aero">
  <div class="inside">
  <h1>青岛大学宿舍介绍</h1>
 　　住宿费：1500RMB/年<br/><br/>

　　豪华程度：四星<br/><br/>

　　宿管：五星（奔放漂亮好身材）<br/><br/>

　　宿宠：只要舍友赞同都好说<br/><br/>

　　中大的清新的田园风格设计，让人觉得很舒服。另外，明德园在生活区的前端（靠近中环东路），与体育馆、图书馆、教学楼、行政楼、足球场等的距离是四大园中最近的。而且离饭堂、惠佳超市、邮局、书店、自助银行也是非常近哦！

　　<br/><br/>　　离贝岗最近的宿舍。至善园位于内环路旁，在其内部有happymore超市、中大逸仙泉售水点、动感地带业务厅以及瑞氏饭堂和第四饭堂。

　　<br/><br/>　　处于“边郊”的宿舍。也就是说，其距离饭堂、超市、教学楼、图书馆等大学生常去之处都貌似不太近。因此……对慎思的同学们深表同情～

　　<br/><br/>　　“大龄”宿舍。说它“大龄”是因为住在格致园的绝大部分是教职工以及研究生。也有很多老师将自己的房子租赁给学生们居住。在格致园内，有中大最好的宾馆:东苑宾馆。自我觉得，还是不错的～另外，格致园六号即是物业公司的办公地点所在，像申请男女生互访，最后一关，就是得经过物业的签字。所以，大家可要留意哦。

　<br/><br/>　【睡床】<br/>

　　最不习惯的就是睡床了。倒不是不习惯板床，而是刚开始很不习惯床梯。每次爬都觉得很吃力。而且，在开学初，我对面宿舍的同学有一次爬上床时意外地摔下来，把手摔成了骨裂。所以，刚开始时，大家可要小心哦！另外，每个人都有自己固定的床位。也就是说，中山大学开学前，你的床位就已经被安排好了的哦！床的规格是190*90*180（长*宽*高）

　<br/><br/>　【电脑桌】<br/>

　　中山大学的宿舍里，每个人都有一个属于自己的“套间”（此套间非彼套间哦，即书桌床衣柜，三合一）电脑桌即是学习桌。但是依n多人的经验，基本上，这张桌子都是用来当作电脑桌使用了的。（除非有定力，能够在电脑面前宠辱不惊～）要学习，就多泡泡图书馆吧！
　　<br/><br/>　【洗手间】<br/>

　　可能是被师兄师姐糟蹋太久了吧？总觉得洗手间是最亟待清洁的地方了。包括水池，玻璃镜子，以及厕所。另外，各个宿舍可要养成定期清洁的好习惯哦！另外，厕所的排水系统貌似不是很好，有时会发恶臭，或者是水管堵塞。遇到这些问题，可直接跟物业公司反映情况，让其及时处理。
　　<br/>　【浴室】<br/>

　　(热水插卡机)个人觉得，中山大学东校区的浴室，真的很袖珍。需要注意的是，如果要洗热水澡，需要先对学生卡进行热水充值，才能够使用热水。中大采用插卡机来计算流量的。但是，不单单是我个人的感觉，普遍的认识就是:在中山大学东校区洗个热水澡，真晒钱哪！而且得注意哦，热水时间是有规定的，晚上7:00-11:00左右。有时候会作出一些调整。

　<br/><br/>　【洗衣机】<br/>

　　得自己买吧

　　<br/><br/>　【饮水机】<br/>

　　饮水机是宿舍必备的在如今，但是建议饮水机不要再happymore买，专门提供订水服务的地方（如逸仙泉，大峡谷）买会便宜很多。大峡谷的矿泉水桶装水是7元/桶，逸仙泉纯净水是5.5/桶。另外，大峡谷是有专人送水的，而逸仙泉呢，呵呵，就得辛苦点啦，自己买水票，自己抬水。大峡谷的订水电话:31282025一个电话过去，包水送到宿舍门口并且装好。而逸仙泉，则需要去至善园5号的文化室旁的售票处买水票，之后到宿管处凭水票拿水。鉴于女生这边，抬水实在难为了。所以一般来说，每个班都会有男生组成送水小组。需要水的话，一个电话过去，就ok了。

　　<br/><br/>　【风扇】<br/>

　　中大的风扇风力够足哦！不过嘛……也要一两个月轮流清洗一次啦。
<br/>
<br/>
<br/>
  </div>
 
   </div>
   </div></div>
  
  

  
<div id="i1"><div id="i2">
   <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  
  <tr>
    <td width="100%" align="center" colspan="3"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table></div></div>
  </body>
</html>
