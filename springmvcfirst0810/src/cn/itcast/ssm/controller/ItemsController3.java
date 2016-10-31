package cn.itcast.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.po.Items;

//import org.springframework.web.servlet.mvc.Controller;

@Controller
public class ItemsController3{

	@RequestMapping("/queryItems4")
	public ModelAndView queryItems() throws Exception{
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
	/*@Override
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
		mav.setViewName("/WEB-INF/jsp/items/itemsList.jsp");
		return mav;
	}*/
	
}
