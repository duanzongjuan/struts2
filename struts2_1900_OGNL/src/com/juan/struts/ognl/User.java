package com.juan.struts.ognl;

public class User {
	private int age = 8;
	
	public User() {}//��������ʱ��ʹ��,��http���洫����ʱ�����пչ��췽��
	
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
