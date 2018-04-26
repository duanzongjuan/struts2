package com.juan.struts.action;

import com.juan.struts.model.User;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5318446443562414464L;
	private User user;
  //private UserDTO userDTO;
	
	public String add() {
		System.out.println("name="+user.getName());
		System.out.println("age="+user.getAge());
		return SUCCESS;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
