$(function(){
	var pro=new Array();
	$.post("WeatherServlet.do",{'type':'province'},function(result){
		pro=result;
		for(var i=0;i<pro.length;i++){
			var p=pro[i];
			var data=pro[i].split(",");
			$("#province").append("<option value="+data[1]+">"+data[0]+"</option>);")
		}
	},"json");
	
	var cities=new Array();
	$("#province").change(function(){
		var val=$(this).val();
		if(val!='0'){
			$("#city").find("option").not(":first").remove();
			$.post("WeatherServlet.do",{'type':'city','id':val},function(result){
				cities=result;				
				for(var i=0;i<cities.length;i++){
					var data=cities[i].split(",");
					$("#city").append("<option value="+data[1]+">"+data[0]+"</option>");
				}
			},"json");			
			
		}
	});
	$("#city").change(function(){
		var val=$(this).val();
		if(val!='0'){
			$.post("WeatherServlet.do",{'type':'weather','id':val},function(result){
				alert(result);
			},"json");			
		}
	});
});