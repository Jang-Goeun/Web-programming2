//20200298 컴퓨터학과 장고은 Microsoft Edge
package jspbook.pr32;

public class AddrBean {
	private String username;
	private String tel;
	private String email;
	private String gender;
	private String group;
	
	public void setUsername(String username) {this.username = username;}
	public void setTel(String tel) {this.tel = tel;}
	public void setEmail(String email) {this.email = email;}
	public void setGender(String gender) {
		switch(gender){
		case "0" : this.gender = "남"; break;
		default  : this.gender = "여"; break;
		}
	}
	public void setGroup(String group) {
		switch(group){
		case "0" : this.group = "가족"; break;
		case "1" : this.group = "친구"; break;
		default  : this.group = "직장"; break;
		}
	}
	
	public String getUsername() {return username;}
	public String getTel() {return tel;}
	public String getEmail() {return email;}
	public String getGender() {return gender;}
	public String getGroup() {return group;}
}
