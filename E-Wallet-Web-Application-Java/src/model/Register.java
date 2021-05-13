package model;

public class Register {
	private int regid;
	private String fname;
	private String lname;
	private String mob;
	private String uname;
	private String pass;
	private double balance;
		
	
	
	public Register() {
		super();
	}

	public Register(String fname, String lname, String mob, String uname, String pass, double balance) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.mob = mob;
		this.uname = uname;
		this.pass = pass;
		this.balance = balance;
	}

	@Override
	public String toString() {
		return "Register [regid=" + regid + ", fname=" + fname + ", lname=" + lname + ", mob=" + mob + ", uname="
				+ uname + ", pass=" + pass + ", balance=" + balance + "]";
	}

	public Register(int regid, String fname, String lname, String mob, String uname, String pass) {
		super();
		this.regid = regid;
		this.fname = fname;
		this.lname = lname;
		this.mob = mob;
		this.uname = uname;
		this.pass = pass;
	}

	public int getRegid() {
		return regid;
	}

	public void setRegid(int regid) {
		this.regid = regid;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getMob() {
		return mob;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}
	

}
