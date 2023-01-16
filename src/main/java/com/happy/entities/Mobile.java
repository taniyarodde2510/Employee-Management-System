package com.happy.entities;
import java.sql.*;

public class Mobile {
	private int fromaccount;
	private String mobile;
	private String amt;
    private String company;
    private String status;
    
    public Mobile()
	{
		status="NA";
	}
	
    
    
	public int getFromaccount() {
		return fromaccount;
	}
	public void setFromaccount(int fromaccount) {
		this.fromaccount = fromaccount;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAmt() {
		return amt;
	}
	public void setAmt(String amt) {
		this.amt = amt;
	}
	
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
		set();
	}
	
	 public String getStatus()
	 {
		 return status;
	}
	
		
	
    
    private void set()
    {
    	
    	Connection con;
    	CallableStatement cst;

    	
    	try {
    	DBconnection obj= new DBconnection();
		con= obj.getDbconnection();
		cst= con.prepareCall("{call torecharge(?,?,?,?)}");
		cst.setInt(1,fromaccount);
		cst.setString(2,mobile);
		cst.setString(3,amt);
		cst.setString(4,company);
		cst.execute();
		
		
		status="Recharge successfully";
		con.close();
		
		
	
    	}
		
    	catch(Exception e)
    	{
    		status="Failed to recharge";
    		System.out.println(e);
    		
    	}
    }
    
   
	


}
