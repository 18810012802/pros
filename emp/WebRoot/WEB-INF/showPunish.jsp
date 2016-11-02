<%@ page language="java" import="java.util.*,com.qdu.model.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//PropertyForm pf=(PropertyForm)request.getAttribute("pf");
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
	
  </head>
  
  <body topmargin="0" background="images/bg.bmp">
   <table width="75%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><div align="center"><jsp:include flush="true" page="head.jsp"></jsp:include></div></td>
  </tr>
 <tr>
       <td>
    <div align="center">
   
<table width="100%" border="1" bordercolor="#551A8B" align="center" cellpadding="0" cellspacing="0" class="abc">
         
          <tr>
             <td colspan="2" align="center"><a href="/emp/ShowYardsClServlet?type=showMain"><img src="images/cfgz.PNG" width="149" height="63" /></a></td>
            </tr>
            <tr>
            <td align="left">
         <p align="center">  <font>学生宿舍违纪处罚细则</font> <br/></p>

住宿学生应严格遵守校纪校规、宿舍管理规定和住宿协议，恪守有关文明公约。违纪者将按有关规定处理。 <br/>
一、在宿舍楼内进行下列活动者，将在宿舍个人文明表现考核中扣分（ 1-2分）。 <br/>
&nbsp;&nbsp;1 、不按时熄灯就寝或熄灯后洗漱、走动、说话的（或接打电话）。（1分） <br/>
&nbsp;&nbsp;2、在寝室洗漱、洗衣服的。（1分） <br/>
&nbsp;&nbsp;3、不履行值日生义务或内务整理不合格的。（每违反1项扣1分） <br/>
&nbsp;&nbsp;4、无正当理由在晚上熄灯、锁门后返舍的。（2分） <br/>
&nbsp;&nbsp;5、在宿舍楼内打球、踢球、乱张贴、乱刻画，污损寝室或走廊墙面；乱扔果壳，纸屑等杂物。（每违反1项扣1分） <br/>
&nbsp;&nbsp;6、隔窗（或栅栏）与他人说话的。（2分） <br/>
&nbsp;&nbsp;7、私自调换寝室，占用另外床位；（1分） <br/>
&nbsp;&nbsp;8、熄灯后在楼内大声喧哗、打牌、高声播放收录机等影响他人学习和休息的。（1分） <br/>
&nbsp;&nbsp;9、寝室脏乱，卫生检查不合格。（1分） <br/>
&nbsp;&nbsp;10、擅自搬迁、拆换家具或其它公用设施。（2分） <br/>
&nbsp;&nbsp;11、宿舍夜间关门后，爬窗、翻门等返回寝室者。（3分） <br/>
&nbsp;&nbsp;12、在宿舍楼内吸烟。（3分） <br/>
&nbsp;&nbsp;13 、其它违反宿舍管理条例的行为。 <br/>
二、对有下列行为之一的，将视情节给予通报批评直至给予警告以上（含警告）处分，赔偿相应的经济损失，同时在宿舍个人文明考核中扣分（ 3-5 分）。 <br/>
&nbsp;&nbsp;1 、故意损坏公用设施或挪公归私。（3分）  <br/>
&nbsp;&nbsp;2 、因在宿舍楼内吸烟、乱扔烟蒂、私拉电线等过失引起火险。（5分）  <br/>
&nbsp;&nbsp;3 、擅自挪用消防器材，使用明火的。（5分）  <br/>
&nbsp;&nbsp;4 、未经批准留宿外来人员的。（3分）  <br/>
&nbsp;&nbsp;5 、寝室内存放违章电器（如电炉、电热杯、热得快、电板夹、电热锅等电热器具、非安全器具等）。（3分）  <br/>
&nbsp;&nbsp;6 、浪费水资源，情节严重者。（3分）  <br/>
&nbsp;&nbsp;7 、在宿舍内使用违章电器（如电炉、电热杯、热得快、电热褥、取暖器、电热锅等电热器具者）。（2分）  <br/>
&nbsp;&nbsp;8、在寝室内酗酒引发事端的。（2分） <br/>
&nbsp;&nbsp;9、点燃蜡烛等明火，危及宿舍安全。（2分） <br/>
&nbsp;&nbsp;10、聚众斗殴、起哄闹事，在宿舍楼摔砸酒瓶等爆响物。（5分） <br/>
&nbsp;&nbsp;11、赌博或变相赌博的。（2分） <br/>
&nbsp;&nbsp;12、干扰、阻碍学校工作人员履行宿舍检查或依法、依校规执行公务。（3分） <br/>
&nbsp;&nbsp;13 、不请假私自离寝的或上网夜不归寝者。（5分） <br/>
&nbsp;&nbsp;14、恶意拨打“ 119” 、“ 110” 、“ 120” 等特种服务电话及干扰他人学习、生活的电话。（2分） <br/>
&nbsp;&nbsp;15、有破坏公物或有私拿他人财物的。（5分） <br/>
&nbsp;&nbsp;16、其它严重违反宿舍管理条例或造成严重后果和恶劣影响的行为。（5分） <br/>
三、 对私自外出夜不归宿的、男女生串寝的，或对多次违反校纪、校规，不遵守学生宿舍规章制度且屡教不改扣足5分者，取消其住宿资格。对因违纪而被取消住宿资格的学生在就读期间，原则上不再安排住宿。 <br/>



 <p align="center">附：学生宿舍公物损坏丢失赔偿标准 学生宿舍公物损坏丢失赔偿 </p>  
 <p align="center">标准（该收费标准随物价变动而变动）</p> <br/> 


     <table width="100%" border="1" cellpadding="0" cellspacing="0" class="abc">
  <tr>
    <td width="25%" align="center">名称</td>
    <td align="center">内容</td>
    <td width="25%" align="center">赔偿金额（元）</td>
    <td width="25%" align="center">备注</td>
  </tr>
  <tr>
    <td width="25%" align="center">窗玻璃</td>
    <td align="center">打破一块</td>
    <td align="center">100</td>
    <td width="25%" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td width="25%" align="center">方凳</td>
    <td align="center">损坏或丢失</td>
    <td width="25%" align="center">25</td>
    <td width="25%" align="center">可收修理费</td>
  </tr>
  <tr>
    <td width="25%" rowspan="3" align="center">公寓床</td>
    <td align="center">橱柜门损坏</td>
    <td align="center">20-100</td>
    <td width="25%" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">椅子损坏或遗失 </td>
    <td width="25%" align="center">20</td>
    <td width="25%" align="center">可收修理费</td>
  </tr>
  <tr>
    <td align="center">严重损坏</td>
    <td align="center">150</td>
    <td width="25%" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td width="25%" rowspan="2" align="center">房间门</td>
    <td align="center">一般损坏可修复</td>
    <td align="center">20-100</td>
    <td width="25%" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">丢失一只</td>
    <td align="center">50</td>
    <td width="25%" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td width="25%" align="center">日光灯</td>
    <td align="center">丢失或损坏一只</td>
    <td align="center">10</td>
    <td width="25%" align="center">自然损坏不收</td>
  </tr>
  <tr>
    <td width="25%" rowspan="2" align="center">灯管</td>
    <td align="center">乱涂乱画</td>
    <td align="center">20</td>
    <td width="25%" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">丢失或损坏一块</td>
    <td align="center">50</td>
    <td width="25%" align="center">自然损坏不收</td>
  </tr>
  <tr>
    <td width="25%" align="center">床板</td>
    <td align="center">丢失或损坏一只</td>
    <td align="center">100</td>
    <td align="center">自然损坏不收</td>
  </tr>
  
  
  <tr>
    <td width="25%" align="center">电话机</td>
    <td align="center">丢失或损坏一块</td>
    <td align="center">80</td>
    <td width="25%" align="center">自然损坏不收</td>
  </tr>
  <tr>
    <td width="25%" align="center">窗帘</td>
    <td align="center">破损一只</td>
    <td align="center">15</td>
    <td width="25%" align="center">自然损坏不收</td>
  </tr>
  <tr>
    <td width="25%" align="center">插座</td>
    <td align="center">破损一只</td>
    <td align="center">10</td>
    <td width="25%" align="center">自然损坏不收</td>
  </tr>
  <tr>
    <td width="25%" align="center">开关</td>
    <td align="center">破损一只</td>
    <td align="center">5</td>
    <td width="25%" align="center">自然损坏不收</td>
  </tr>
  <tr>
    <td width="25%" align="center">水龙头</td>
    <td align="center">丢失或破损一只</td>
    <td align="center">150</td>
    <td width="25%" align="center">自然损坏不收</td>
  </tr>
  <tr>
   
    <td colspan="4" width="25%" align="center">其他未列举的物品参照上述标准酌情收取。</td>
  </tr>
</table>      
            
            
            
            </td>
            </tr>
           
        </table>
      
  
   </div>
    
    </td> 
  </tr>
  <tr>
    <td colspan="3" align="center"><jsp:include flush="true" page="tail.jsp"></jsp:include></td>
  </tr>
</table>
  </body>
</html>
