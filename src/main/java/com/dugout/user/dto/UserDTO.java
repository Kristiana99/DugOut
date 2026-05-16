package com.dugout.user.dto;


public class UserDTO {
    private String userId;
    private String password;
    private String userName;
    private String email;
    private String role;
    private String regdate;
    
    public UserDTO() {
    }
	public UserDTO(String userId, String password, String userName, String email, String role, String regdate) {

		this.userId 	= userId;
		this.password 	= password;
		this.userName 	= userName;
		this.email 		= email;
		this.role 		= role;
		this.regdate 	= regdate;
	}
	
	
	public String getUserId() {return userId;}
	public String getPassword() {return password;}
	public String getUserName() {return userName;}
	public String getEmail() {return email;}
	public String getRole() {return role;}
	public String getRegdate() {return regdate;}
	public void setUserId(String userId) {this.userId = userId;}
	public void setPassword(String password) {this.password = password;}
	public void setUserName(String userName) {this.userName = userName;}
	public void setEmail(String email) {this.email = email;}
	public void setRole(String role) {this.role = role;}
	public void setRegdate(String regdate) {this.regdate = regdate;}

	@Override
	public String toString() {
		return "UserDTO [userId=" + userId + ", password=" + password + ", userName=" + userName + ", email=" + email
				+ ", role=" + role + ", regdate=" + regdate + "]";
	}
    
    
    
}

