package com.zoo.models;

public class Vehicle {
	 public Vehicle(int id, String type, int capacity, boolean available) {
			
			this.id = id;
			this.type = type;
			this.capacity = capacity;
			this.available = available;
	 }
			    private int id;
				private String type;
			    private int capacity;
			    private boolean available;
 
       
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	public boolean isAvailable() {
		return available;
	}
	public void setAvailable(boolean available) {
		this.available = available;
	}
	 @Override
	    public String toString() {
	        return "vehicle [ id=" + id+ ", type=" + type + ", capacity=" + capacity + ", available=" + available + "]";
	    }
}
	
   
	
  
