package cs336;

public class User {
	private String UserName;
	private String PassWord;
	
	public User(String username, String password) {
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
}
