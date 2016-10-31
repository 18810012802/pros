package cn.itcast.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import cn.itcast.ssm.po.Items;

public class ItemsController1 implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		List<Items> itemsList=new ArrayList<Items>();
		Items i1=new Items();
		i1.setName("联想笔记本");
		i1.setPrice(6000f);
		i1.setDetail("thinkpad");
		
		Items i2=new Items();
		i2.setName("苹果手机");
		i2.setPrice(5000f);
		i2.setDetail("iphone6");
		itemsList.add(i1);
		itemsList.add(i2);
		ModelAndView mav=new ModelAndView();
		mav.addObject("itemsList",itemsList);
		mav.setViewName("/items/itemsList");
		return mav;
	}
	
}
