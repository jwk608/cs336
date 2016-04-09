package cs336;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String userName;
	private String userPass;
	// CONNECTION METHODS
	// Attempts to get connection to server, StackTraces on failure
	public Connection getConnection(){
		String connectionUrl = "jdbc:mysql://localhost:3306/myDB?autoReconnect=true";
		//String connectionUrl = "jdbc:mysql://classvm115.cs.rutgers.edu:3306/myDB?autoReconnect=true";
		Connection connection = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			connection = DriverManager.getConnection(connectionUrl,"root", "root");
			//connection = DriverManager.getConnection(connectionUrl,"root", "GimGamGam99");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return connection;
		
	}
	
	// Attempts to close existing connection, StackTraces on failure
	public void closeConnection(Connection connection){
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// QUERY METHODS
	// Example taken from MyWebApp to learn how to insert to a table
	public void insertUser() throws SQLException{
		
		String insertString = "insert into Person values(115, \"Borgida\",  \"Alex\");";
		
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(insertString);

		// execute select SQL statement
		preparedStatement.executeUpdate();
		System.out.println("Person added");

		preparedStatement.close();
		dbConnection.close();
	}
	
	// Uses SQL to find password associated with passed-in username, returns either password string or ""
	public String findPassword(String userName) throws SQLException {
		// Builds SQL statement from passed-in userName
		if (userName == "" || userName == null) return "";
		String selectString = "select ";
		selectString += userName;
		selectString += " from UserTable;";
		
		// Executes built SQL statement
		Connection dbConnection = getConnection();
		PreparedStatement prepState = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		String testPass = "";
		ResultSet rs = prepState.executeQuery();
		
		// Checks if there are multiple users
		if (rs.next()) {
			System.out.println("Multiple users found");
		}
		
		// Checks if there were no users with that username, returns empty password if so
		if (rs.wasNull()) {
			return "";
		}
		
		// Cycles through all instances of username in table, gets first password as return password
		// Users should not have more than one entry
		while(rs.next()) {
			System.out.println("row : userName = " + userName + ", password = " + rs.getString("password"));
			resLength++;
			if (testPass == "" || testPass == null) {
				testPass = rs.getString("password");
			}
		}
		
		System.out.println("Found " + resLength + " results, first password was " + testPass + ", finishing");
		
		prepState.close();
		dbConnection.close();
		return testPass;
	}
	
	public String getUser() {
		return this.userName;
	}
	
	public String getPass(){ 
		return this.userPass;
	}
	
	public Login() {
		super();
	}
	// WEBAPP METHODS
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
		Login log = new Login();
		String username = req.getParameter("username");
        String pass = req.getParameter("password");
        
        userName = username;
        userPass = pass;
        
        String tempPass = "";
        PrintWriter pww = resp.getWriter();
        
        // Checks if either field is empty, if so returns a message for user
        if (username == "" || username == null || pass == "" || pass == null) {
        	pww.write("Please enter all fields\n");
        }
        
        // Attempts to find password for input user
        try {
        	tempPass = log.findPassword(username);
        }
        catch (SQLException e){
        	e.printStackTrace();
        }
       
        // Checks input password against found password, writes to page
        if (tempPass == pass) {
        	resp.setContentType("text/html");
        	pww.write("<h1>Hello " + username + "</h1>");
        } else {
        	System.out.println("Invalid Username/Password");
        	pww.write("Invalid Username/Password\n");
        }
	}
}