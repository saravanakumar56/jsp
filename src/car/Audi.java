package car;
import java.sql.Connection;
import java.sql.DriverManager;
public class Audi {
	static Connection con;
    public static Connection getconnection()
  {
	 try
	 {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","gautam");
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	return con;
	}
}

