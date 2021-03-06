package controller;

import java.sql.Date;

public class MonthlyVehicle {
	private String date;
	private int vehicleId;
	private float averageTime;
	private int locationCount;
	

	/** Constructor of MonthlyVehicle 
	 *  @param date Considered month
	 *  @param vehicleId Id of the vehicle
	 *  @param averageTime Average usage time
	 *  @param locationCount Number of time the vehicle was rent
	 **/
	public MonthlyVehicle(String date,int vehicleId,float averageTime,int locationCount){
		this.date = date;
		this.vehicleId = vehicleId;
		this.averageTime = averageTime;
		this.locationCount = locationCount;
	}

	/** Emptry constructor of MonthlyVehicle */
	public MonthlyVehicle(){
		;
	}

	/** @param date Set date of MonthlyVehicle */
	public void setDate(String date) {
		this.date = date;
	}

	/** @return date */
	public String getDate() {
		return date;
	}

	/** @param vehicleId Set vehicleId of MonthlyVehicle */
	public void setVehicleId(int vehicleId) {
		this.vehicleId = vehicleId;
	}

	/** @return vehicleId */
	public int getVehicleId() {
		return vehicleId;
	}

	/** @param averageTime Set averageTime of MonthlyVehicle */
	public void setAverageTime(float averageTime) {
		this.averageTime = averageTime;
	}

	/** @return averageTime */
	public float getAverageTime() {
		return averageTime;
	}

	/** @return locationCount */
	public int getLocationCount(){
		return locationCount;
	}

	/** @param locationCount Set locationCount of MonthlyVehicle */
	public void setLocationCount(int locationCount){
		this.locationCount = locationCount;
	}

	/** @return String with values of every field */
	@Override
	public String toString(){
		return "Date: "+this.date+" VehicleId: "+this.vehicleId+" Average time: "+this.averageTime+" Location count: "+this.locationCount;
	}
}
