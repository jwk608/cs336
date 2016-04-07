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
import javax.servlet.http.HttpServletResponse;


public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
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
	
	public void closeConnection(Connection connection){
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
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
	
	/* EXAMPLE OF RETURN FROM MyWebApp
	public LinkedList<Person> getAllPeople() throws SQLException{
		
		LinkedList<Person> listOfPeople = new LinkedList<Person>();
		
		//display all tuples
		String selectString = "select * from Person;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		//creating a ResultSet
		while(rs.next( )) {
			System.out.println("row : id = " + rs.getInt("PersonID") + ", first name = " + rs.getString("FirstName") );
			resLength++;
			listOfPeople.add(new Person(rs.getInt("PersonID"), rs.getString("FirstName"), rs.getString("LastName")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		//close everything
		preparedStatement.close();
		dbConnection.close();
		
		return listOfPeople;
	}
	*/
	
	public String findPassword(String userName) throws SQLException {
		String selectString = "select ";
		selectString += userName;
		selectString += " from UserTable;";
		
		Connection dbConnection = getConnection();
		PreparedStatement prepState = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		String testPass = "";
		ResultSet rs = prepState.executeQuery();
		
		if (rs.next()) {
			System.out.println("Multiple users found");
		}
		if (rs.wasNull()) {
			return "";
		}
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
	
	protected void doPost(HttpServlet req, HttpServletResponse resp)throws ServletException, IOException {
		Login log = new Login();
		String username = req.getInitParameter("username");
        String pass = req.getInitParameter("password");
        String tempPass = "";
        PrintWriter pww = resp.getWriter();
        
        if (username == "" || username == null || pass == "" || pass == null) {
        	pww.write("Please enter all fields\n");
        }
        
        try {
        	tempPass = log.findPassword(username);
        }
        catch (SQLException e){
        	e.printStackTrace();
        }
        
        
        
        if (tempPass == pass) {
        	
        	resp.setContentType("text/html");
        	pww.write("<h1>Hello " + username + "</h1>");
        } else {
        	System.out.println("Invalid Username/Password");
        	pww.write("Invalid Username/Password\n");
        }
	}
}