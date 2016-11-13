$(function(){
	var pro=[{id:'31123',name:'四川'},{id:'31124',name:'广东'}];
	var cities=new Array();
	cities['31123']=['1077,汶川','1451,广元'];
	cities['31124']=['2349,从化','2350,广州'];
	for(var i=0;i<pro.length;i++){
		$("#province").append("<option value="+pro[i].id+">"+pro[i].name+"</option>);")
		
	}
	$("#province").change(function(){
		var val=$(this).val();
		if(val!='0'){
			for(var i=0;i<cities[val].length;i++){
				var data=cities[val][i].split(",");
				$("#city").append("<option value="+data[0]+">"+data[1]+"</option>");
				
			}
		}
	});
	$("#city").change(function(){
		var val=$(this).val();
		if(val!='0'){
			$.post("WeatherServlet",{'id':val},function(result){
				alert(result);
			},"json");			
		}
	});
});