package cn.itcast.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.ssm.po.ItemsCustom;

@Controller
public class JsonTest {
	@RequestMapping("/requestJson")
	public @ResponseBody ItemsCustom requestJson(@RequestBody ItemsCustom itemsCustom){
		
		return itemsCustom;
	}




	@RequestMapping("/responseJson")
	public @ResponseBody ItemsCustom responseJson(@RequestBody ItemsCustom itemsCustom){
		
		return itemsCustom;
	}
}
