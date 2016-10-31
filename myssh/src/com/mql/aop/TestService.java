package com.mql.aop;

public class TestService implements TestServiceInter,TestServiceInter2 {

	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public void sayHello() {
		// TODO Auto-generated method stub
		System.out.println("hi"+name);
	}
	@Override
	public void sayHello2() {
		// TODO Auto-generated method stub
		System.out.println("hi2"+name);
	}

}
