package jspbook.pr30;
import java.time.LocalDate;

public class LoginBean {
	private String id;
	private String pw;
	private Integer gender;
	private String email;
	private String birth;
	
	public void setId(String id) {this.id = id;}
	public void setPw(String pw) {this.pw = pw;}
	public void setGender(Integer gender) {this.gender = gender;}
	public void setEmail(String email) {this.email = email;}
	public void setBirth(String birth) {this.birth = birth;}
	
	public String getId() {return id;}
	public String getPw() {return pw;}
	public Integer getGender() {return gender;}
	public String getEmail() {return email;}
	public String getBirth() {return birth;}
	
	public boolean isGrownup() {
		String[] dArray = birth.split("-");
		LocalDate currentDate = LocalDate.now();
		int currentYear = currentDate.getYear();
		int birthYear = Integer.parseInt(dArray[0]);
		
		if((currentYear-birthYear + 1) >= 20)
			return true;
		else
			return false;
	}

	public String getstr() {
		String gen;
		String bir;
		
		if(isGrownup()==true) 
			bir = "성인";
		else
			bir = "미성년자";
		
		if(pw.equalsIgnoreCase("0"))
			gen = "남성";
		else
			gen = "여성";
		
		return id + "씨는 " + gen + "이고, " + bir + "입니다.";
	}
}
