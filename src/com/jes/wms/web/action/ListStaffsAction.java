package com.jes.wms.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;

import com.jes.wms.service.IBaseService;
import com.jes.wms.web.beans.Staff;
import com.jes.wms.web.forms.StaffGrid;

public class ListStaffsAction extends IJqGridAction<StaffGrid> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1337041532777878724L;
	
	private IBaseService<Staff> staffService;
	
	private StaffGrid staffGrid;
	@Override
	public StaffGrid getModel() {
		if(staffGrid == null){
			this.staffGrid = new StaffGrid();
		}
		return this.staffGrid;
	}
	

	public IBaseService<Staff> getStaffService() {
		return staffService;
	}


	public void setStaffService(IBaseService<Staff> staffService) {
		this.staffService = staffService;
	}


	@Override
	public int getResultSize() {
		// TODO Auto-generated method stub
		return 0;
	}

	public String listStaffs() {
		// TODO Auto-generated method stub
		if (this.refreshGridModel() == "success") {
			try {
				formJsonArray(this.listResults(0,20));
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "success";
		}
		return "error";
	}
	@Override
	public List<StaffGrid> listResults(int from, int length) {
		// TODO Auto-generated method stub
		List<Staff> staffs = Collections.emptyList();
		staffs = this.staffService.queryByPage(from, length);
		List<StaffGrid> grids = new LinkedList<StaffGrid>();
		for (int i = 0; i < staffs.size(); i++) {
			StaffGrid grid = new StaffGrid();
			grid.setIkey(staffs.get(i).getId()+"");
			grid.setName(staffs.get(i).getName());
			grid.setCode(staffs.get(i).getCode());
			grid.setMail(staffs.get(i).getMail());
			grid.setMobilephone(staffs.get(i).getMobilePhone());
			grids.add(grid);
		}
		return grids;
	}
	
	public String add(){
		Staff iStaff = new Staff();
		iStaff = Grid2Staff(staffGrid);
		iStaff.setCreateBy(getOper());
		iStaff.setCreateDate(new Date());
		if (this.staffService.addService(iStaff) == false)
			return "error";
		return SUCCESS;
	}
	
	public String edit(){
		Staff iStaff = new Staff();
		iStaff = Grid2Staff(staffGrid);
		iStaff.setUpdateBy(getOper());
		iStaff.setUpdateDate(new Date());
		if (this.staffService.modifyService(iStaff) == false)
			return "error";
		return SUCCESS;
	}
	
	public String del(){
		Staff iStaff = new Staff();
		iStaff.setId(Integer.parseInt(staffGrid.getIkey()));
		if (this.staffService.delService(iStaff) == false)
			return "error";
		return SUCCESS;
	}

	
	private Staff Grid2Staff(StaffGrid grid) {
		Staff staff = new Staff();
		if(StringUtils.isNotBlank(grid.getIkey())){
			staff.setId(Integer.parseInt(grid.getIkey()));
		}
		staff.setName(grid.getName());
		staff.setPwd("123");
		staff.setCode(grid.getCode());
		staff.setMobilePhone(grid.getMobilephone());
		staff.setMail(grid.getMail());
		staff.setOrg("1");
		staff.setDeptId("1");
		staff.setStatus(true);
		staff.setIsOutline(false);
		return staff;
	}
	
	private void formJsonArray(List<StaffGrid> data) throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		// 处理日期问题
		JSONArray jsonArray = JSONArray.fromObject(data);
		JSONObject json = new JSONObject();
		json.accumulate("gridModel", jsonArray);
		System.out.println(jsonArray);
		out.print(jsonArray.toString());// 将JSON数据返回页面
		out.flush();
		out.close();
	}

}
