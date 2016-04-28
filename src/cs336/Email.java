package cs336;

public class Email {
	private String sendingUser;
	private String receivingUser;
	private String Subject;
	private String Message;
	
	public Email(String sendinguser, String receivinguser, String subject, String message) {
		super();
		sendingUser = sendinguser;
		receivingUser = receivinguser;
	}


	public Email(){
		
	}

	public String getSendingUser() {
		return sendingUser;
	}

	public void setSendingUser(String sendinguser) {
		sendingUser = sendinguser;
	}

	public String getReceivingUser() {
		return receivingUser;
	}

	public void setReceivingUser(String receivinguser) {
		receivingUser = receivinguser;
	}
	public String getSubject() {
		return Subject;
	}

	public void setSubject(String subject) {
		Subject = subject;
	}

	public String getMessage() {
		return Message;
	}

	public void setMessage(String message) {
		Message = message;
	}
}
