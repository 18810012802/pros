<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>天气预报</title>
    <script src="js/jquery-1.9.1.js"></script>
    <script type="text/javascript">
    $(function(){
    	$("#btn").click(function(){
    		$.post("CXFSer",null,function(result){
    			
    			$(result).each(function(){
    				alert(this.id+","+this.age+","+this.name);
    			})
    		},"json")
    	});
    });
    </script>
</head>

<body>
	<input type="button" id="btn" value="搜"/>

</body>
</html>