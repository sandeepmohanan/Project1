package loginAction;
import java.sql.*;  
import DBConnection.*;
public class validateLogin {

	
	public String validateuserLogin(String username,String password)
	{
		int  x=0;  
		String group="";
		try{  
			
		Connection con=getDBConnection.getDBConnections();  
		              
		PreparedStatement ps=con.prepareStatement("select * from login where username=? and password=?");  
		  
		ps.setString(1,username);  
		ps.setString(2, password);  
		              
		ResultSet rs=ps.executeQuery();  
		if(rs.next())
		{
			
			System.out.println(rs.getString(3)+rs.getString(4));
			group=rs.getString(3);
			x=rs.getInt(4);
			 
		}
		     
		if(x<=0)
		{
			 group="Invalid";
		}
		
		}catch(Exception e){}  
		  
		return group;  
		  
	}
	
	
	
	public int newuserRegistration(String regno,String name,String email,String contact,String street_no,String street_name,String town,String country)
	{
		int  x=0;  
		
		try{
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("insert into Persons(Registration_Number,Person_Name,Contact_Number,Street_Number,StreetName,City,Country,Email) values(?,?,?,?,?,?,?,?)");
			ps.setString(1,regno);
			ps.setString(2,name);
			ps.setString(3,email);
			ps.setString(4,contact);
			ps.setString(5,street_no);
			ps.setString(6,street_name);
			ps.setString(7,town);
			ps.setString(8,country);
			
			x=ps.executeUpdate();
			}catch(Exception e){}

			return x;
		  
	}
	
	
	
	
	
                           }
