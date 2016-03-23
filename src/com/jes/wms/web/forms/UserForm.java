package com.jes.wms.web.forms;

public class UserForm {
	String username;
	String password;
	String model;
	
	public UserForm(){};
	
	public UserForm(String username,String password,String model){
		this.username = username;
		this.password = password;
		this.model = model;
	}
	public void setUsername(String username){
		this.username = username;
	}
    public String getUsername(){
    	return this.username;
    }
    public void setPassword(String password){
    	this.password = password;
    }
    public String getPassword(){
    	return this.password;
    }
    public void setModel(String model){
    	this.model = model;
    }
    public String getModel(){
    	return this.model;
    }
}
