package com.happy.entities;
import java.sql.*;

public class Electricbill {

	private int fromaccount;
	private String mobile;
	private String amt;
    private String status;
    
    public Electricbill()
    {
    	status="Na";
    }

	public void setFromaccount(int fromaccount) {
		this.fromaccount = fromaccount;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public void setAmt(String amt) {
		this.amt = amt;
		set();
	}

	

	public String getStatus() {
		return status;
	}
    
	private void set()
    {
    	
    	Connection con;
    	CallableStatement cst;

    	
    	try {
    	DBconnection obj= new DBconnection();
		con= obj.getDbconnection();
		cst= con.prepareCall("{call billpay(?,?,?)}");
		cst.setInt(1,fromaccount);
		cst.setString(2,mobile);
		cst.setString(3,amt);
		cst.execute();
		
		
		status="Payment Done!..";
		con.close();
		
		
	
    	}
		
    	catch(Exception e)
    	{
    		
    		status="Payment not done!!..";
    		
    	}
	
	
}
}
