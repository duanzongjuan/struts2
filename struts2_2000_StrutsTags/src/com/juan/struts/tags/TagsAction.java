package com.juan.struts.tags;

import com.opensymphony.xwork2.ActionSupport;

public class TagsAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -774426614318957536L;
	
	private String username;
	private String password;
	
	public String execute() {
		this.addFieldError("fielderror.test", "wrong!");
		return SUCCESS;
	}
	
	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
