package com.juan.struts.action;

import com.juan.struts.model.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5318446443562414464L;
	private User user = new User();
  
	public String add() {
		System.out.println("name="+user.getName());
		System.out.println("age="+user.getAge());
		return SUCCESS;
	}
	
	
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
}
