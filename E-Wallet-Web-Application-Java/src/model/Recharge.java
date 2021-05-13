package model;

public class Recharge {
	private String uname;
	private String mob;
	private double amount;
	private String provider;
	public Recharge(String uname, String mob, double amount, String provider) {
		super();
		this.uname = uname;
		this.mob = mob;
		this.amount = amount;
		this.provider = provider;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getMob() {
		return mob;
	}
	public void setMob(String mob) {
		this.mob = mob;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getProvider() {
		return provider;
	}
	public void setProvider(String provider) {
		this.provider = provider;
	}
	
	
	
}
