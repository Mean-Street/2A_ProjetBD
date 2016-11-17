package controller;

public class MonthlyClass {
	private String date;
	private String className;
	private float averageTime;
	

	/** Constructor of MonthlyClass 
	 *  @param date Month of data
	 *  @param className Name of the vehicle class
	 *  @param averageTime Average usage time of vehicles in specified class
	 **/
	public MonthlyClass(String date,String className,float averageTime){
		this.date = date;
		this.className = className;
		this.averageTime = averageTime;
	}

	/** Empty constructor of MonthlyClass */
	public MonthlyClass(){
		;
	}

	/** @param date Set date of MonthlyClass */
	public void setDate(String date) {
		this.date = date;
	}

	/** @return date */
	public String getDate() {
		return date;
	}

	/** @param className Set className of MonthlyClass */
	public void setClassName(String className) {
		this.className = className;
	}

	/** @return className */
	public String getClassName() {
		return className;
	}

	/** @param averageTime Set averageTime of MonthlyClass */
	public void setAverageTime(float averageTime) {
		this.averageTime = averageTime;
	}

	/** @return averageTime */
	public float getAverageTime() {
		return averageTime;
	}

	/** @return MonthlyClass as a data string */
	@Override
	public String toString(){
		return "Date: "+this.date+" Class name: "+this.className+" Average time: "+this.averageTime;
	}
}
