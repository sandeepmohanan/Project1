package DBConnection;
import java.sql.*;
public class getDBConnection
{
	
    public static Connection conn = null;
	public static  Connection getDBConnections()
	   {
    String dbURL = "jdbc:sqlserver://localhost\\SQLEXPRESS;encrypt=false";
    String user = "sandeep";
    String pass = "sandeep";
   try
	   {
	   conn = DriverManager.getConnection(dbURL, user, pass);
       if (conn != null)
    	{
	        DatabaseMetaData dm = (DatabaseMetaData) conn.getMetaData();
	        System.out.println("Driver name: " + dm.getDriverName());
	        System.out.println("Driver version: " + dm.getDriverVersion());
	        System.out.println("Product name: " + dm.getDatabaseProductName());
	        System.out.println("Product version: " + dm.getDatabaseProductVersion());
	    }
      
      
	   } catch (Exception e) {
		   e.printStackTrace();
		   }
   return conn;
}



}
