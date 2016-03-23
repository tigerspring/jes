package com.jes.wms.web.action;

import java.util.Collections;
import java.util.List;
import com.jes.wms.service.IBaseService;
import com.jes.wms.web.beans.Staff;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

public class LoginAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 5202308326126585083L;
    private String username;
    private String password;
    private String model;	
	private IBaseService<Staff> staffService;
	
	public String getUsername(){
		return username;
	}
	public void setUsername(String username){
		this.username = username;
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password = password;
	}
	public String getModel()
	{
		return model;
	}
	public void setModel(String model){
		this.model = model;
	}	  
	public void setStaffService(IBaseService<Staff> staffService) {
		this.staffService = staffService;
	}
	
	public String execute(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
		request.setAttribute("basePath", basePath);
		//获取每个模块的首页地址		
		model = model.substring(0,model.length());
		model = model+"page";
		ActionContext.getContext().getSession().put("model", model);

		List<Staff> sList = Collections.emptyList();
    	try{
    		Staff staff = new Staff();
    		staff.setName(username);
    		staff.setPwd(password);
    		sList = this.staffService.Login(staff);
    		ActionContext.getContext().getSession().put("username", username);    		
    		String usercode = sList.get(0).getCode();
    		ActionContext.getContext().getSession().put("usercode", usercode); 
    		return "success";
    	}catch(Exception e){
    		e.printStackTrace();
    		return "error";
    	}
    }

}
