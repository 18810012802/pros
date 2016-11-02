<%@ page language="java" import="java.util.*,com.qdu.struts.form.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ArrayList<NewsForm> aln=(ArrayList)request.getAttribute("aln");
ArrayList<NewsForm> al=(ArrayList)request.getAttribute("al");
ArrayList<NewsForm> al1=(ArrayList)request.getAttribute("al1");
ArrayList<NewsForm> al2=(ArrayList)request.getAttribute("al2");
ArrayList<NewsForm> al3=(ArrayList)request.getAttribute("al3");
ArrayList<NewsForm> al4=(ArrayList)request.getAttribute("al4");
String[] pageCount=(String[])request.getAttribute("pageCount");
int pageCount1=Integer.parseInt(pageCount[0]);
int pageCount2=Integer.parseInt(pageCount[1]);
int pageCount3=Integer.parseInt(pageCount[2]);
int pageCount4=Integer.parseInt(pageCount[3]);
String pageNow=pageCount[4];
String AllPageCount=pageCount[5];
String AllPageCountn=pageCount[6];
//System.out.println("pagenow="+pageNow);
%>
<script type="text/javascript"> 
function setTab(name,cursel){
	cursel_0=cursel;
	for(var i=1; i<=links_len; i++){
		var menu = document.getElementById(name+i);
		var menudiv = document.getElementById("con_"+name+"_"+i);
		if(i==cursel){
			menu.className="off";
			menudiv.style.display="block";
		}
		else{
			menu.className="";
			menudiv.style.display="none";
		}
	}
}
function Next(){                                                        
	cursel_0++;
	if (cursel_0>links_len)cursel_0=1
	setTab(name_0,cursel_0);
} 
var name_0='one';
var cursel_0=1;
var ScrollTime=3000;//循环周期（毫秒）
var links_len,iIntervalId;
onload=function(){
	var links = document.getElementById("tab1").getElementsByTagName('li')
	links_len=links.length;
	for(var i=0; i<links_len; i++){
		links[i].onmouseover=function(){
			clearInterval(iIntervalId);
			this.onmouseout=function(){
				iIntervalId = setInterval(Next,ScrollTime);
			}
		}
	}
	document.getElementById("con_"+name_0+"_"+links_len).parentNode.onmouseover=function(){
		clearInterval(iIntervalId);
		this.onmouseout=function(){
			iIntervalId = setInterval(Next,ScrollTime);
		}
	}
	setTab(name_0,cursel_0);
	iIntervalId = setInterval(Next,ScrollTime);
	}






function $(id) { return document.getElementById(id); } 
function addLoadEvent(func){ 
var oldonload = window.onload; 
if (typeof window.onload != 'function') { 
window.onload = func; 
} else { 
window.onload = function(){ 
oldonload(); 
func(); 
} 
} 
} 
function addBtn() { 
if(!$('ibanner')||!$('ibanner_pic')) return; 
var picList = $('ibanner_pic').getElementsByTagName('a'); 
if(picList.length==0) return; 
var btnBox = document.createElement('div'); 
btnBox.setAttribute('id','ibanner_btn'); 
var SpanBox =''; 
for(var i=1; i<=picList.length; i++ ) { 
var spanList = '<span class="normal">'+i+'</span>'; 
SpanBox += spanList; 
} 
btnBox.innerHTML = SpanBox; 
$('ibanner').appendChild(btnBox); 
$('ibanner_btn').getElementsByTagName('span')[0].className = 'current'; 
for (var m=0; m<picList.length; m++){ 
var attributeValue = 'picLi_'+m 
picList[m].setAttribute('id',attributeValue); 
} 
} 
function moveElement(elementID,final_x,final_y,interval) { 
if (!document.getElementById) return false; 
if (!document.getElementById(elementID)) return false; 
var elem = document.getElementById(elementID); 
if (elem.movement) { 
clearTimeout(elem.movement); 
} 
if (!elem.style.left) { 
elem.style.left = "0px"; 
} 
if (!elem.style.top) { 
elem.style.top = "0px"; 
} 
var xpos = parseInt(elem.style.left); 
var ypos = parseInt(elem.style.top); 
if (xpos == final_x && ypos == final_y) { 
moveing = false; 
return true; 
} 
if (xpos < final_x) { 
var dist = Math.ceil((final_x - xpos)/10); 
xpos = xpos + dist; 
} 
if (xpos > final_x) { 
var dist = Math.ceil((xpos - final_x)/10); 
xpos = xpos - dist; 
} 
if (ypos < final_y) { 
var dist = Math.ceil((final_y - ypos)/10); 
ypos = ypos + dist; 
} 
if (ypos > final_y) { 
var dist = Math.ceil((ypos - final_y)/10); 
ypos = ypos - dist; 
} 
elem.style.left = xpos + "px"; 
elem.style.top = ypos + "px"; 
var repeat = "moveElement('"+elementID+"',"+final_x+","+final_y+","+interval+")"; 
elem.movement = setTimeout(repeat,interval); 
} 
function classNormal() { 
var btnList = $('ibanner_btn').getElementsByTagName('span'); 
for (var i=0; i<btnList.length; i++){ 
btnList[i].className='normal'; 
} 
} 
function picZ() { 
var picList = $('ibanner_pic').getElementsByTagName('a'); 
for (var i=0; i<picList.length; i++){ 
picList[i].style.zIndex='1'; 
} 
} 
var autoKey = false; 
function iBanner() { 
if(!$('ibanner')||!$('ibanner_pic')||!$('ibanner_btn')) return; 
$('ibanner').onmouseover = function(){autoKey = true}; 
$('ibanner').onmouseout = function(){autoKey = false}; 

var btnList = $('ibanner_btn').getElementsByTagName('span'); 
var picList = $('ibanner_pic').getElementsByTagName('a'); 
if (picList.length==1) return; 
picList[0].style.zIndex='2'; 
for (var m=0; m<btnList.length; m++){ 
btnList[m].onmouseover = function() { 
for(var n=0; n<btnList.length; n++) { 
if (btnList[n].className == 'current') { 
var currentNum = n; 
} 
} 
classNormal(); 
picZ(); 
this.className='current'; 
picList[currentNum].style.zIndex='2'; 
var z = this.childNodes[0].nodeValue-1; 
picList[z].style.zIndex='3'; 
if (currentNum!=z){ 
picList[z].style.left='650px'; 
moveElement('picLi_'+z,0,0,10); 
} 
} 
} 
} 
setInterval('autoBanner()', 5000); 
function autoBanner() { 
if(!$('ibanner')||!$('ibanner_pic')||!$('ibanner_btn')||autoKey) return; 
var btnList = $('ibanner_btn').getElementsByTagName('span'); 
var picList = $('ibanner_pic').getElementsByTagName('a'); 
if (picList.length==1) return; 
for(var i=0; i<btnList.length; i++) { 
if (btnList[i].className == 'current') { 
var currentNum = i; 
} 
} 
if (currentNum==(picList.length-1) ){ 
classNormal(); 
picZ(); 
btnList[0].className='current'; 
picList[currentNum].style.zIndex='2'; 
picList[0].style.zIndex='3'; 
picList[0].style.left='650px'; 
moveElement('picLi_0',0,0,10); 
} else { 
classNormal(); 
picZ(); 
var nextNum = currentNum+1; 
btnList[nextNum].className='current'; 
picList[currentNum].style.zIndex='2'; 
picList[nextNum].style.zIndex='3'; 
picList[nextNum].style.left='650px'; 
moveElement('picLi_'+nextNum,0,0,10); 
} 
} 
addLoadEvent(addBtn); 
addLoadEvent(iBanner); 
</script> 


  

<style type="text/css">
.tab1{width:401px;border-top:#ADDFF2 solid 1px;border-bottom:#ADDFF2 solid 1px;margin: 0 auto;float:left;}
.menu{height:25px;border-right:#ADDFF2 solid 1px;}
.menu li{float:left;width:99px;text-align:center;line-height:21px;height:21px;cursor:pointer;border-bottom:#ADDFF2 solid 1px;border-left:#ADDFF2 solid 1px;color:#666;font-size:14px;overflow:hidden;background:#EEF7FE;}
.menu li.off{background:#FFFFFF;color:#336699;font-weight:bold;border-bottom:#FFFFFF solid 1px;}

.menudiv{height:235px;border-left:#ADDFF2 solid 0px;border-right:#ADDFF2 solid 1px;border-bottom:#ADDFF2 solid 0px;border-top:0;background:#fefefe}
.menudiv div{padding:15px;line-height:28px;}
#con_one_1,#con_one_2,#con_one_3,#con_one_4{}
.t{line-height:180%;height:90%; margin-bottom:5px; border:1px;width:380px; padding-left:20px; padding-top:10px;white-space:nowrap; overflow:hidden; position:relative;}
.tdd{position:absolute; left:0; top:0; width:12px; height:12px; border:1px solid #B1E0F4; color:#6298CC; font-style:normal; font-size:10px; font-family:Arial; background:#E6F0FD; text-align:center; line-height:12px; overflow:hidden;}
 
 
 
* { margin:0; padding:0; } 
body { position:relative;background:#FFF; color:#333; font:12px/1.6em Helvetica, Arial, sans-serif; text-align:center;
	margin-left:auto;
	margin-right:auto;} 
h1, h2, h3, h4, h5, h6 { font-size:1em; } 
a { color:#0287CA; text-decoration:none; } 
a:hover { text-decoration:underline; } 
ul, li { list-style:none; } 
fieldset, img { border:none; } 
legend { display:none; } 
em, strong, cite, th { font-style:normal; font-weight:normal; } 
table,input, textarea, select, button { font:12px Helvetica, Arial, sans-serif; } 
table { border-collapse:collapse; } 
html { overflow:-moz-scrollbars-vertical; } 
#ibanner { position:relative; width:780px; height:250px; overflow:hidden; margin:0 auto; }  
#ibanner_pic {} 
#ibanner_pic a { position:absolute;top:0px; display:block; width:780px; height:250px; overflow:hidden; } 
#ibanner_btn { position:absolute; z-index:9999; right:5px; bottom:5px; font-weight:700; font-family:Arial; } 
#ibanner_btn span { display:block; float:left; margin-left:4px; padding:0 5px; background:#000; cursor:pointer; } 
#ibanner_btn .normal { height:20px; margin-top:8px; border:1px solid #999; color:#999; font-size:16px; line-height:20px; } 
#ibanner_btn .current { height:28px; border:1px solid #FF5300; color:#FF5300; font-size:28px; line-height:28px; } 



/* body { font-size:12px; text-align:center;}  */
ul, li { list-style:none;} 
a{ text-decoration:none; color:#3381BF;} 
a:hover{ text-decoration:underline;} 
#movie_rank { height:260px;} 
.box2 { border:1px solid #ADDFF2; text-align:left; overflow:hidden; color:#9C9C9C; text-align:left;width:377;margin:0 auto;} 
.box2 { float:left;margin-bottom:7px;} 
.box2 h2{ background:#EEF7FE; height:21px; line-height:21px; overflow-y:hidden; border-bottom:1px solid #ADDFF2; color:#1974C8; font-size:12px; padding:0px 8px;} 
.box2 h2 a.more{ float:right; text-decoration:underline; background:url() no-repeat 100% -123px; padding-right:8px; font-weight:normal;} 
.box2 h2 span{ margin-left:5px; font-weight:normal; color:#B9B7B8;} 
.box2 .inner{ padding:8px; line-height:18px; overflow:hidden; color:#3083C7;} 
.box2 a{ color:#3083C7; white-space:nowrap;} 
.rank_list{ line-height:14px; margin:auto; padding-top:5px;} 
.rank_list li{ height:14px; margin-bottom:8px; width:290px; padding-left:20px; white-space:nowrap; overflow:hidden; position:relative;} 
.rank_list li.top3 em{ background:#FFE4B7; border:1px solid #FFBB8B; color:#FF6800;} 
.rank_list em,.e{ position:absolute; left:0; top:0; width:12px; height:12px; border:1px solid #B1E0F4; color:#6298CC; font-style:normal; font-size:10px; font-family:Arial; background:#E6F0FD; text-align:center; line-height:12px; overflow:hidden;} 
.rank_list span{ position:absolute; width:100px; color:#B7B7B7; text-align:right; height:14px; background:#fff; left:110px;} 
#movie_rank .rank_list span{ position:absolute; width:60px; color:#B7B7B7; text-align:right; height:14px; background:#fff; left:240px;} 

#join{margin:0 auto;width:780;}
.con{height:14px; margin-bottom:8px; width:290px; padding-left:20px; white-space:nowrap; overflow:hidden; position:relative;}
</style> 




<div id="ibanner"> 
<div id="ibanner_pic"> 
<a href="/jscss/"><img width="780" src="images/d1.jpg" alt="" /></a> 
<a href="/sort/index.shtml"><img  width="780" src="images/d2.jpg" alt="" /></a> 
<a href="/other/lastupdate.shtml"><img width="780" src="images/d3.jpg" alt="" /></a> 
<a href="/other/top100.shtml"><img width="780" src="images/d4.jpg" alt="" /></a> 

</div> 
</div><!--ibanner end--> 
<!-- <div style="height:20px; background:#EEE;"></div> 
 -->
 
 <div id="join">
 <div class="box2" id="movie_rank"> 
<h2><a href="/emp/news.do?type=notices" class="more">更多</a>通告</h2> 
<div class="inner"> 
<ul class="rank_list"> 

<%
int n=aln.size();

 for(int i=0;i<n;i++)
{
     NewsForm ib=(NewsForm)aln.get(i);
      if(i<3)
      {
      %>
      <li class="top3"><em><%=i+1 %></em><a href="#"><%=ib.getTitle() %></a><span><%=ib.getNewstime() %></span></li>
      <%
      
      }else
      {
      %>
       <li><em><%=i+1 %></em><a href="#"><%=ib.getTitle() %></a><span><%=ib.getNewstime() %></span></li>
      <%
      
      }
      }


 %>

<!-- <li class="top3"><em>1</em><a href="#">艾恩An-Upload 无组件上传类</a><span>21</span></li>
<li class="top3"><em>2</em><a href="#">EasySlide jQuery图片轮显</a><span>528</span></li> 
<li class="top3"><em>3</em><a href="#">通用Ajax无刷新表彰验证类</a><span>232</span></li> 
<li><em>4</em><a href="#">支持中文的鼠标取词VB源码</a><span>74</span></li> 
<li><em>5</em><a href="#">通用Ajax无刷新表彰验证类</a><span>56</span></li> 
<li><em>6</em><a href="#">EasySlide jQuery图片轮显</a><span>85</span></li> 
<li><em>7</em><a href="#">支持中文的鼠标取词VB源码</a><span>25</span></li> 
<li><em>8</em><a href="#">多样式链接提示框组件</a><span>85</span></li> 
<li><em>9</em><a href="#">类似lightbox的无刷新图片显示插件</a><span>41</span></li> 
<li><em>10</em><a href="#">通用Ajax无刷新表彰验证类</a><span>62</span></li>  -->




</ul> 
</div> 
</div> 
 
 
 
 <div class="tab1" id="tab1">
	<div class="menu">
		<ul>
			<li id="one1" onclick="setTab('one',1)"><font size="1" >宿舍改造</font></li>
			<li id="one2" onclick="setTab('one',2)"><font size="1" >宿舍文化</font></li>
			<li id="one3" onclick="setTab('one',3)"><font size="1" >宿舍管理</font></li>
			<li id="one4" onclick="setTab('one',4)"><font size="1" >媒体关注</font></li>
		</ul>
	</div>
	<div class="menudiv">
	
	<%
	for(int j=0;j<4;j++)
	{
	
	 %>
		<div id="con_one_<%=(j+1)+""%>">	
	<table  class="t">
		 <%	
		 int ii=0;	
		 if(j==0){
		 ii=al1.size();
		 }else if(j==1)
		 {
		 ii=al2.size();
		 }else if(j==2)
		 {
		 ii=al3.size();
		 }else if(j==3)
		 {
		 ii=al4.size();
		 } 
		 for(int i=0;i<ii;i++)
		 {
		 NewsForm ib=new NewsForm();
		 if(j==0){
		 ib=(NewsForm)al1.get(i);
		 }else if(j==1)
		 {
		 ib=(NewsForm)al2.get(i);
		 }else if(j==2)
		 {
		 ib=(NewsForm)al3.get(i);
		 }else if(j==3)
		 {
		 ib=(NewsForm)al4.get(i);
		 }
		 %>
		 <tr align="left">	 
		  <td  width="20"><font color="<%=(i<3?"red":"") %>"><%=(Integer.parseInt(pageNow)-1)*10+i+1 %></font></td> <td><a href=""><%=ib.getTitle() %></a></td> <td align="center"><font color="#B7C0D4"><%=ib.getNewstime() %></font></td>		  		 
		 </tr>
		 <%
		 }		 
		  %>	 
		<tr>
    <td colspan="5" align="center">
    <%
     for(int i=1;i<=pageCount1;i++)
    {
    %>
    <%-- <a href="/emp/news.do?type=left&pageNow=<%=i %>">[<%=i%>]</a> --%>
    <%
    } 
     %>
     </td>
  </tr></table>
  </div>
  <%
	}
	 %>
  
  
		


	</div>
	</div>
	
	
</div>

	

	
	
 






