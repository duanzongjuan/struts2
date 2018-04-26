package com.juan.struts.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5318446443562414464L;
	private String name;
	private int age;
	
	public String add() {
		System.out.println("name="+name);
		System.out.println("age="+age);
		return SUCCESS;
	}
	
	public String getName() {
		return name;
	}
	public int getAge() {
		return age;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
