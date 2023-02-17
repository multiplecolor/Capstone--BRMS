package com.revature.model;

public class Bus {
	private String busId;
	private String busRegNum;
	private int capacity;
	private String type;
	public Bus() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bus(String busId, String busRegNum, int capacity, String type) {
		super();
		this.busId = busId;
		this.busRegNum = busRegNum;
		this.capacity = capacity;
		this.type = type;
	}
	public String getBusId() {
		return busId;
	}
	public void setBusId(String busId) {
		this.busId = busId;
	}
	public String getBusRegNum() {
		return busRegNum;
	}
	public void setBusRegNum(String busRegNum) {
		this.busRegNum = busRegNum;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "Bus [busId=" + busId + ", busRegNum=" + busRegNum + ", capacity=" + capacity + ", type=" + type + "]";
	}
}
	
	