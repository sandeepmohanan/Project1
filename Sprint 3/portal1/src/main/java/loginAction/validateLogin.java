package loginAction;
import java.sql.*;  
import DBConnection.*;
import java.util.ArrayList;

public class validateLogin {

	public ArrayList Persons  = new ArrayList();
	 CallableStatement cstmt = null;
	  public static void main(String[] args)
	{
			}
	
	
	public String validateuserLogin(String username,String password)
	{
		
		
		
		int  x=0;  
		String group="";
		try{  
			
		Connection con=getDBConnection.getDBConnections();  
		              
		PreparedStatement ps=con.prepareStatement("select * from login where username=? and password=? and [activestatus]=1");  
		  
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
		
		}catch(Exception e){
			
			 System.out.println("err in generalenquiry: " + e);
				
			
			
		}  
		  
		return group;  
		  
	}
	
	
	
	public int newuserRegistration(String regno,String name,String email,String contact,String street_no,String street_name,String town,String country,String password,String type)
	{
		int  x=0;  
		
		try{
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("insert into Persons(Registration_Number,Person_Name,Contact_Number,Street_Number,StreetName,City,Country,Email,password,user_type) values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,regno);
			
			ps.setString(2,name);
			ps.setString(3,email);
			ps.setString(4,contact);
			ps.setString(5,street_no);
			ps.setString(6,street_name);
			ps.setString(7,town);
			ps.setString(8,country);
			ps.setString(9,password);
			ps.setString(10,type);
			x=ps.executeUpdate();
			}catch(Exception e){
				
				
			}

			return x;
		  
	}
	
	public int generalenquiry(String regno,String name,String email,String contact,String street_no,String street_name,String town,String country)
	{
		int  x=0;  
		
		try{
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("insert into General(Registration_Number,Person_Name,Contact_Number,Street_Number,StreetName,City,Country,Email) values(?,?,?,?,?,?,?,?)");
			ps.setString(1,regno);
			ps.setString(2,name);
			ps.setString(3,email);
			ps.setString(4,contact);
			ps.setString(5,street_no);
			ps.setString(6,street_name);
			ps.setString(7,town);
			ps.setString(8,country);
			
			x=ps.executeUpdate();
			}catch(Exception e){
				
				 System.out.println("err in generalenquiry: " + e);
				
			}

			return x;
		  
	}
	
	
	public  ArrayList viewregistration()
	{
	
		Persons.clear();
		try{  
			
		Connection con=getDBConnection.getDBConnections();  
		              
		PreparedStatement ps=con.prepareStatement("SELECT * from [portal].[dbo].[Persons] where[status] is NUll");  
		  
		 
		              
		ResultSet rs=ps.executeQuery();  
		while(rs.next())
		{
			String[] temp = new String[9];
			
			
			temp[0]=rs.getString(1);
			temp[1]=rs.getString(2);
			temp[2]=rs.getString(3);
			temp[3]=rs.getString(4);
			temp[4]=rs.getString(5);
			temp[5]=rs.getString(6);
			temp[6]=rs.getString(7);
			temp[7]=rs.getString(8);
			temp[8]=rs.getString(9);
			Persons.add(temp);
		}
		     
		
		System.out.println("List size="+Persons.size());
		
		}catch(Exception e){
			System.out.println("err in viewregistration: " + e);}  
		  
	
		return Persons;  
	}
	
	
	
	
	
	
	
	
	
	
	
	public int ChangeRegistrationStatus(int row,String status)
	{
		int  x=0;  
		
		try{
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("UPDATE   [portal].[dbo].[Persons]set status=? where [Personid]=?");
			ps.setString(1,status);
			ps.setInt(2,row);		
			x=ps.executeUpdate();
			}catch(Exception e){System.out.println("err in ChangeRegistrationStatus: " + e);}

			return x;
		  
	}
	
	public  String[] getRegistrationData(int id)
	{
		String[] temp = new String[3];
		Persons.clear();
		try{  
			
		Connection con=getDBConnection.getDBConnections();  
		              
		PreparedStatement ps=con.prepareStatement("select Registration_Number,[password],user_type from  [portal].[dbo].[Persons] where Personid=?");  
		  
		ps.setInt(1,id);
		              
		ResultSet rs=ps.executeQuery();  
		while(rs.next())
		{
			
			
			
			temp[0]=rs.getString(1);
			temp[1]=rs.getString(2);
			temp[2]=rs.getString(3);
			
		}
		     
		
		System.out.println("List size="+Persons.size());
		
		}catch(Exception e){System.out.println("err in getRegistrationData: " + e);}  
		  
	
		return temp;  
	}
	
	
	
	
	
	
	public int ApproveRegistration(int row)
	{
		int x=0;
		try{
			String[] y=getRegistrationData(row);
			System.out.println("1getRegistrationData out: " + y.length);
		if(y.length>0)
		{
		
		
		
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("  insert into [portal].[dbo].[login](username,password,usergroup,[activestatus])values(?,?,?,?)");
			ps.setString(1,y[0]);
			ps.setString(2,y[1]);
			ps.setString(3,y[2]);
			ps.setInt(4,1);
		
			
			x=ps.executeUpdate();
			System.out.println("2insertintologin out: " + x);
			
			int z= ChangeRegistrationStatus( row,"Approved");
			System.out.println("3ChangeRegistrationStatus out: " + z);
			if(z<0)
			{
			x=0;	
			}
		}
			}catch(Exception e){System.out.println("err in ApproveRegistration: " + e);}

			return x;
		  
	}
	

	public int RemoveRegistration(int row)
	{
		int x=0;
		try{
		
		
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("  delete from   [portal].[dbo].[Persons] where [Personid]=?");
			
			ps.setInt(1,row);
		
			
			x=ps.executeUpdate();
			
		
			}catch(Exception e){System.out.println("err in ApproveRegistration: " + e);}

			return x;
		  
	}
	
	
	
	public int addnewCourse(String cid,String cgroup,String cname,String ccredit,String cdetails)
	{
		int  x=0;  
		
		try{
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("insert into [portal].[dbo].[Courses](courseregistration,coursegroup,Course_name,credits,coursesummary) values(?,?,?,?,?)");
			ps.setString(1,cid);
			
			ps.setString(2,cgroup);
			ps.setString(3,cname);
			ps.setString(4,ccredit);
			ps.setString(5,cdetails);
			
			x=ps.executeUpdate();
			}catch(Exception e)
		{
				System.out.println("err in ApproveRegistration: " + e);}

			return x;
		  
	}
	
	public  ArrayList getCourses()
	{
		Persons.clear();
		try{  
			
		Connection con=getDBConnection.getDBConnections();  
		              
		PreparedStatement ps=con.prepareStatement("SELECT * from [portal].[dbo].[Courses]");  
		  
		 
		              
		ResultSet rs=ps.executeQuery();  
		while(rs.next())
		{
			String[] temp = new String[6];
			
			
			temp[0]=rs.getString(1);
			temp[1]=rs.getString(2);
			temp[2]=rs.getString(3);
			temp[3]=rs.getString(4);
			temp[4]=rs.getString(5);
			temp[5]=rs.getString(6);
	
			Persons.add(temp);
		}
		     
		
		System.out.println("List size="+Persons.size());
		
		}catch(Exception e){
			System.out.println("err in viewregistration: " + e);}  
		  
	
		return Persons;  
	}
	
	
	
	
	
	

	

	
                           }
