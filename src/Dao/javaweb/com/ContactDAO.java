package Dao.javaweb.com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.sanpham;

public class ContactDAO {
	public static Boolean checkManager(String name) {
	   Connection conn=Dao.getConnection();
	   String sql="select idu from [JavaWeb].[dbo].[USER] where username=?";
	try {
		PreparedStatement pst = conn.prepareStatement(sql);
		 pst.setString(1, name);
	       ResultSet rs=pst.executeQuery();
	      while(rs.next()) {
	    	   if(rs.getInt(1)==2) {
	    		   return true;
	    	   }
	    	  
	       }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
      
     return false;
	}
	public static List<sanpham> listProduct() throws Exception{
		Connection conn=Dao.getConnection();
		List<sanpham> list=new ArrayList<sanpham>();
	    try {
	    
		    String sql="SELECT TOP 1000 [Name]\r\n" + 
		    		"      ,[url]\r\n" + 
		    		"      ,[about]\r\n" + 
		    		"      ,[price]\r\n" + 
		    		"	   ,[id]\r\n"    +	
		    		"  FROM [JavaWeb].[dbo].[PRODUCT]";    
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				sanpham sp=new sanpham(rs.getString(1),rs.getString(3),rs.getString(2),rs.getInt(4),rs.getInt(5));
				list.add(sp);
			
			}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   
		return list;
		
	}
	
	public static boolean Delete(String id) {
		if(id!=null) {
			Connection conn = Dao.getConnection();
			String sql ="DELETE FROM [JavaWeb].[dbo].[PRODUCT] where id=?";
			try {
				
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setString(1, id);
				pst.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
			
	}
		return true;
	}
	
	public static boolean Insert(sanpham s) {
		Connection conn=Dao.getConnection();
		String sql="INSERT INTO [JavaWeb].[dbo].[PRODUCT] values (?,?,?,?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setString(2, s.getUrl());
			pst.setString(3, s.getAbout());
			pst.setInt(4, s.getPrice());
			pst.setInt(5, s.getId());
			pst.executeUpdate();	
			return true;
			} catch(SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static boolean Update(sanpham s) {
		Connection conn=Dao.getConnection();
		String sql="UPDATE [JavaWeb].[dbo].[PRODUCT] SET Name = ? , url = ?,about = ?,price = ? WHERE id = ?";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, s.getName());
			pst.setString(2, s.getUrl());
			pst.setString(3, s.getAbout());
			pst.setInt(4, s.getPrice());
			pst.setInt(5, s.getId());
			pst.executeUpdate();	
			
			return true;
			} catch(SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}

