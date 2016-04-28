package cs336;

public class User {
	private String UserName;
	private String PassWord;
	private String FirstName;
	private String LastName;
	
	public User(String username, String password, String firstname, String lastname) {
		super();
		UserName = username;
		PassWord = password;
	}


	public User(){
		
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String username) {
		UserName = username;
	}

	public String getPassWord() {
		return PassWord;
	}

	public void setPassWord(String password) {
		PassWord = password;
	}
	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstname) {
		FirstName = firstname;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastname) {
		LastName = lastname;
	}
}
