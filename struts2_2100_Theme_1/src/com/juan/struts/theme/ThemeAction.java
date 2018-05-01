package com.juan.struts.theme;

import com.opensymphony.xwork2.ActionSupport;

public class ThemeAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -774426614318957536L;
	
	public String execute() {
		this.addFieldError("fielderror.test", "wrong!");
		return SUCCESS;
	}
	
}
