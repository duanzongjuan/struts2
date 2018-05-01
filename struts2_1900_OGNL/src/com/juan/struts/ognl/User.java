package com.juan.struts.ognl;

public class User {
	private int age = 8;
	
	public User() {}//传参数的时候使用,用http后面传参数时必须有空构造方法
	
	public User(int age) {
		super();
		this.age = age;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	public String toString() {
		return "user" + age;
	}
	
}
