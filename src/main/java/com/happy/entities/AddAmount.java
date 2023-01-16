package com.happy.entities;
import java.sql.*;

public class AddAmount {
	
	private int userid;
	private double balance;
	private String status;
	
	public AddAmount()
	{
		status="NA";
	}
	
	public String getStatus() {
		return status;
	}  
	
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public void setBalance(double balance) {
		this.balance = balance;
		
		add();
	}
	
	
	private void add()
	{
		Connection con;
		PreparedStatement pst;
		
		try
		{
			DBconnection obj= new DBconnection();
			con= obj.getDbconnection();
			pst= con.prepareStatement("update Euser set walletbalance=+? Where userid=?;");
			pst.setDouble(1,balance);
			pst.setInt(2,userid);
			int cnt= pst.executeUpdate();
			
			if(cnt > 0 )
			{
				status="Done!!...";
			}
			con.close();
		}
		catch(Exception e)
		{
			status="sorry fail...";
	
		}
		
	}
	
	

}
