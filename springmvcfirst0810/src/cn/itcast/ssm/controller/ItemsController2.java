package cn.itcast.ssm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.HttpRequestHandler;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.po.Items;

public class ItemsController2 implements HttpRequestHandler{

	@Override
	public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		/*ModelAndView mav=new ModelAndView();
		mav.addObject("itemsList",itemsList);
		mav.setViewName("/WEB-INF/jsp/items/itemsList.jsp");
		return mav;*/
		request.setAttribute("itemsList",itemsList);
		response.setCharacterEncoding("utf-8");
		request.getRequestDispatcher("/items/itemsList").forward(request, response);
	}

	
}
