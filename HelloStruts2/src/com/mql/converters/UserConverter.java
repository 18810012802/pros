package com.mql.converters;

import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import com.mql.po.User;

public class UserConverter extends StrutsTypeConverter {

	@Override
	public Object convertFromString(Map arg0, String[] values, Class arg2) {
		// TODO Auto-generated method stub
		User user=new User();
		String []userValues=values[0].split(",");
		user.setNo(Integer.parseInt(userValues[0]));
		user.setName(userValues[1]);
		return user;
	}

	@Override
	public String convertToString(Map arg0, Object value) {
		// TODO Auto-generated method stub
		User user=(User)value;
		return user.getNo()+","+user.getName();
	}

}
