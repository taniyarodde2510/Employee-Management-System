package com.happy.entities;

import java.sql.*;


public class SendMoney {
	private String adharcard;
	private String uname;
	private String wamount;
	private String status;
	
	public SendMoney()
	{
		status="NA";
	}
	
	public String getStatus() {
		return status;
	}
	
	
	public void setAdharcard(String adharcard) {
		this.adharcard = adharcard;
	}
	
	public void setUname(String uname) {
		this.uname = uname;
	}
	public void setWamount(String wamount) {
		this.wamount = wamount;
		transfer();
	}
	
	
	private void transfer()
	{
		Connection con;
		CallableStatement cst;
		
		try
		{
			DBconnection obj = new DBconnection();
			con= obj.getDbconnection();
			cst= con.prepareCall("{call deposite(?,?,?)}");
			cst.setString(1, adharcard);
			cst.setString(2, uname);
			cst.setString(3, wamount);

	        cst.execute();
			
			
			
			
			status="transfer successfull!!...";
			con.close();
			
		}
		catch(Exception e)
		{
		
		System.out.println("insufficient balance.... sorry!!");
	      status="fail to transfer";
			
		}
	
	}
		
		
}
