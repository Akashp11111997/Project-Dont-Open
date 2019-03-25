package model;

public class User {
	
	private String First_Name;
	private String Last_Name;
	private String Gender;
	private String email;
	private String Contact_Number;
	private String UserId;
	private String password;
	
	
	public User(String first_Name, String last_Name, String gender, String email, String contact_Number, String userId,
			String password) {
		super();
		First_Name = first_Name;
		Last_Name = last_Name;
		Gender = gender;
		this.email = email;
		Contact_Number = contact_Number;
		UserId = userId;
		this.password = password;
	}

	public User() {
		// TODO Auto-generated constructor stub
	}


	public String getFirst_Name() {
		return First_Name;
	}


	public void setFirst_Name(String first_Name) {
		First_Name = first_Name;
	}


	public String getLast_Name() {
		return Last_Name;
	}


	public void setLast_Name(String last_Name) {
		Last_Name = last_Name;
	}


	public String getGender() {
		return Gender;
	}


	public void setGender(String gender) {
		Gender = gender;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getContact_Number() {
		return Contact_Number;
	}


	public void setContact_Number(String contact_Number) {
		Contact_Number = contact_Number;
	}


	public String getUserId() {
		return UserId;
	}


	public void setUserId(String userId) {
		UserId = userId;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
}

	
