package courseAdministration;

import java.sql.*;  
import DBConnection.*;
import java.util.ArrayList;

public class courseAdministrationAction {


	CallableStatement cstmt = null;
	public ArrayList Persons  = new ArrayList();
	

	public int deactivateAccount(String ID)
	{
		int  x=0;  
		
		try{
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("Update [dbo].[login] set [activestatus]=0 where username=?");
			
			ps.setString(1,ID);		
			x=ps.executeUpdate();
			
			}catch(Exception e){System.out.println("err in ChangeRegistrationStatus: " + e);}

			return x;
		  
	}
	

	public  ArrayList viewclient()
	{
	
		Persons.clear();
		try{  
			
		Connection con=getDBConnection.getDBConnections();  
		  String SQL = "{call sp_getActiveClientDeatils()}";
		  cstmt = con.prepareCall (SQL);
          
          
		              
		ResultSet rs=cstmt.executeQuery();  
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
	
	
	public  ArrayList getCoursesubject(String CID)
	{
		Persons.clear();
		try{  
			
		Connection con=getDBConnection.getDBConnections();  
		              
		PreparedStatement ps=con.prepareStatement("SELECT  [courseregistration],[subjectid],[subjectname],[date],[Uid] FROM [portal].[dbo].[Subject]  where [courseregistration]=?");  
		ps.setString(1,CID);
		 
		              
		ResultSet rs=ps.executeQuery();  
		while(rs.next())
		{
			String[] temp = new String[5];
			
			
			temp[0]=rs.getString(1);
			temp[1]=rs.getString(2);
			temp[2]=rs.getString(3);
			temp[3]=rs.getString(4);
			temp[4]=rs.getString(5);
			
	
			Persons.add(temp);
		}
		     
		
		System.out.println("List size="+Persons.size());
		
		}catch(Exception e){
			System.out.println("err in viewregistration: " + e);}  
		  
	
		return Persons;  
	}
	
	public int addnewSubject(String cid,String sid,String sname)
	{
		int  x=0;  
		
		try{
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("insert into [portal].[dbo].[Subject](courseregistration,subjectid,subjectname) values(?,?,?)");
			ps.setString(1,cid);
			
			ps.setString(2,sid);
			ps.setString(3,sname);

			
			x=ps.executeUpdate();
			}catch(Exception e)
		{
				System.out.println("err in ApproveRegistration: " + e);}

			return x;
		  
	}
	
	

	public int removeCourse(int id)
	{
		int  x=0;  
		
		try{
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("delete FROM [portal].[dbo].[Courses] where[courseid]=?");
			
			ps.setInt(1,id);		
			x=ps.executeUpdate();
			}catch(Exception e){System.out.println("err in ChangeRegistrationStatus: " + e);}

			return x;
		  
	}
	
	
	public int addnewmessage(String message)
	{
		int  x=0;  
		
		try{
			Connection con=getDBConnection.getDBConnections();  
			PreparedStatement ps=con.prepareStatement("insert into [CommsDetails](message,usergroup,userID) values(?,?,?)");
			ps.setString(1,message);
			
			ps.setString(2,"admin");
			ps.setString(3,"1243");

			
			x=ps.executeUpdate();
			}catch(Exception e)
		{
				System.out.println("err in ApproveRegistration: " + e);}

			return x;
		  
	}
	
	public  ArrayList viewAssignedCourses(String fid)
	{
	
		Persons.clear();
		try{  
			
		Connection con=getDBConnection.getDBConnections();  
		  String SQL = "{call SP_GetCourseAssagnment('1244')}";
		  cstmt = con.prepareCall (SQL);
          
          
		              
		ResultSet rs=cstmt.executeQuery();  
		while(rs.next())
		{
			String[] temp = new String[4];
			
			
			temp[0]=rs.getString(1);
			temp[1]=rs.getString(2);
			temp[2]=rs.getString(3);
			temp[3]=rs.getString(4);
			
			
			Persons.add(temp);
		}
		     
		
		System.out.println("List size="+Persons.size());
		
		}catch(Exception e){
			System.out.println("err in viewregistration: " + e);}  
		  
	
		return Persons;  
	}
		public  ArrayList getWeekmaterial(String CID)
	{
		Persons.clear();
		try{  
			
		Connection con=getDBConnection.getDBConnections();  
		              
		PreparedStatement ps=con.prepareStatement("SELECT [WeekNumber],[createddate]  FROM [portal].[dbo].[SubjectWeeks] where [SubID]=?");  
	   ps.setString(1,CID);
		 
		              
		ResultSet rs=ps.executeQuery();  
		while(rs.next())
		{
			String[] temp = new String[2];
			
			
			temp[0]=rs.getString(1);
			temp[1]=rs.getString(2);
		
			
	
			Persons.add(temp);
		}
		     
		
		System.out.println("List size="+Persons.size());
		
		}catch(Exception e){
			System.out.println("err in viewregistration: " + e);}  
		  
	
		return Persons;  
	}
		
		
		
		public int addWeek(String subid,String wname)
		{
			int  x=0;  
			
			try{
				Connection con=getDBConnection.getDBConnections();  
				PreparedStatement ps=con.prepareStatement("insert into [portal].[dbo].[SubjectWeeks](SubID,WeekNumber) values(?,?)");
				ps.setString(1,subid);
				
				ps.setString(2,wname);
			

				
				x=ps.executeUpdate();
				}catch(Exception e)
			{
					System.out.println("err in ApproveRegistration: " + e);}

				return x;
			  
		}
		
	
		
		
		
		public  ArrayList getAssessments(String CID)
		{
			Persons.clear();
			try{  
				
			Connection con=getDBConnection.getDBConnections();  
			              
			PreparedStatement ps=con.prepareStatement("SELECT [Title] ,[File1],[File2] ,[File3] ,[Comment],[deadline],[createddate]  FROM [portal].[dbo].[SubjectAssessment] where [SubID]=?");  
		   ps.setString(1,CID);
			 
			              
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				String[] temp = new String[7];
				temp[0]=rs.getString(1);
				temp[1]=rs.getString(2);
				temp[2]=rs.getString(3);
				temp[3]=rs.getString(4);
				temp[4]=rs.getString(5);
				temp[5]=rs.getString(6);
				temp[6]=rs.getString(7);
		
				
		
				Persons.add(temp);
			}
			     
			
			System.out.println("List size="+Persons.size());
			
			}catch(Exception e){
				System.out.println("err in viewregistration: " + e);}  
			  
		
			return Persons;  
		}
			
	}
	
	
	