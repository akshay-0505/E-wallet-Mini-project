package dao;

import model.Register;
import model.Login;
import model.Recharge;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class Dao {
	private int i;
	
	public int save(Register rg) {
		Connection con=Myconnection.getConnection();
		try {
			PreparedStatement ps=con.prepareStatement("insert into userinfo(fname,lname,mob,uname,pass,balance) values(?,?,?,?,?,?)");
			ps.setString(1, rg.getFname());
			ps.setString(2, rg.getLname());
			ps.setString(3, rg.getMob());
			ps.setString(4, rg.getUname());
			ps.setString(5, rg.getPass());
			ps.setDouble(6, rg.getBalance());
			
			i=ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		
		return i;
	}
	
	public Register validate(Login in) {
		Connection con=Myconnection.getConnection();
		ResultSet rs=null;
		Register user=null;
		try {
			PreparedStatement ps=con.prepareStatement("select * from userinfo where uname=? AND pass=?");
			ps.setString(1, in.getUname());
			ps.setString(2, in.getPass());
			rs=ps.executeQuery();
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		
		try {
			if(rs.next()) {
				user=new Register();
				user.setRegid(rs.getInt("regid"));
				user.setFname(rs.getString(2));
				user.setLname(rs.getString(3));
				user.setMob(rs.getString(4));
				user.setUname(rs.getString(5));
				user.setPass(rs.getString(6));
				user.setBalance(rs.getDouble(7));

			}
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		
		return user;
	}
	
	public int updateBalance(Register user,double amt) {
		Connection con=Myconnection.getConnection();
		double updatedamt=user.getBalance()+amt;
		try {
			PreparedStatement ps=con.prepareStatement("Update userinfo set balance=? where uname=?");
			ps.setDouble(1, updatedamt);
			ps.setString(2, user.getUname());
			i=ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		
		return i;
	}
	
	
	
	public int recharge(Register user,Recharge rg) {
		
		Connection con=Myconnection.getConnection();
		if(user.getBalance()<rg.getAmount())
			return 0;
		double updatedamt=user.getBalance()-rg.getAmount();
		try {
			PreparedStatement stuser=con.prepareStatement("Update userinfo set balance=? where uname=?");
			stuser.setDouble(1, updatedamt);
			stuser.setString(2, user.getUname());
			i=stuser.executeUpdate();
			
			PreparedStatement strg=con.prepareStatement("insert into recharge values(?,?,?,?)");
			strg.setString(1, user.getUname());
			strg.setString(2, rg.getMob());
			strg.setString(3, rg.getProvider());
			strg.setDouble(4, rg.getAmount());
			i=strg.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
			e.printStackTrace();
		}
		
		
		
		return i;
	}
	
	
	
	
	
}
