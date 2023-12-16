package jspbook.t2;
import java.util.Calendar;

public class CalendarBean {
	Calendar today = Calendar.getInstance();
	Calendar cal = Calendar.getInstance();
	
	private String YEAR;
	private String MONTH;
	
	private int presentYear = today.get(Calendar.YEAR);
	private int presentMonth = today.get(Calendar.MONTH);
	private int presentDay = today.get(Calendar.DATE);
	
	private int year = cal.get(Calendar.YEAR);
	private int month = cal.get(Calendar.MONTH);
	
	private int end;
	private int startDay;
	
	 public CalendarBean() {
	        cal.set(this.year, this.month, 1);
	        end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	        startDay = cal.get(Calendar.DAY_OF_WEEK);
	  }
	 
	//setter
	public void setYEAR(String YEAR) {
		if(!YEAR.equals(null)) {
			this.YEAR = YEAR;
			this.year = Integer.parseInt(YEAR);
		}
	}
	public void setMONTH(String MONTH) {
		if(!MONTH.equals(null)) {
			this.MONTH = MONTH;
			this.month = Integer.parseInt(MONTH);
			if(this.month == 12) {
				this.month = 11;
			}else if(this.month == -1){
				this.month = 0;
			}
			cal.set(this.year, this.month, 1);
			end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
			startDay = cal.get(Calendar.DAY_OF_WEEK);
		}
	}
	
	//getter
	public String getYEAR() {return YEAR;}
	public String getMONTH() {return MONTH;}
	public int getYear() {return year;}
	public int getMonth() {return month + 1;}
	public int getMonth1() {return month;}
	public int getPresentYear() {return presentYear;}
	public int getPresentMonth() {return presentMonth + 1;}
	public int getPresentDay() {return presentDay;}
	
	
	public int getNextYear() {return this.year + 1;}
	public int getPrevYear() {return this.year - 1;}
	public int getNextMonth() {return this.month + 1;}
	public int getPrevMonth() {return this.month - 1;}
	public int getEnd() {return end;}
	public int getStartDay() {return startDay;}
}