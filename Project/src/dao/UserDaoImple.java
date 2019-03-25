package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.DB;
import model.User;

public class UserDaoImple implements UserDAO{

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		try {
			Connection con = DB.getConnection();
			String sql="insert into user values(?,?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,user.getFirst_Name());
			ps.setString(2,user.getLast_Name());
			ps.setString(3, user.getGender());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getContact_Number());
			ps.setString(6, user.getUserId());
			ps.setString(7, user.getPassword());
			int rowaffected = ps.executeUpdate();
			System.out.println(rowaffected+"Rows inserted");
			con.close();
			
		}catch (Exception e) {
			System.out.println(e);
		}
	}

	@Override
	public User getUserbyId(String userId) {
		// TODO Auto-generated method stub
		User user = new User();
		try {
			Connection con = DB.getConnection();
			String sql = "select * from user where userid=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				user =new User(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
			}
		}catch(Exception e) {
			System.out.println("Error"+e);
		}
		return user;
		
		
	}

	@Override
	public List<User> getAllList() {
		// TODO Auto-generated method stub
		List<User> userList = new ArrayList<>();
		try {
			
			Connection con = DB.getConnection();
			String sql ="select * from user ";
			Statement st = con.createStatement();
			ResultSet rs= st.executeQuery(sql);
			while(rs.next()) {
				User user = new User (rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
				userList.add(user);
			}
			
		}catch(Exception e) {
			System.out.println("Error UserDao getallusers() : "+ e);
		}
		return userList;
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		try {
			Connection con = DB.getConnection();
			String sql = "update user set fname=? , lname =? , gender=? , email=? , contact=? , password=? where userid=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,user.getFirst_Name());
			ps.setString(2,user.getLast_Name());
			ps.setString(3, user.getGender());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getContact_Number());
			ps.setString(6, user.getPassword());
			ps.setString(7, user.getUserId());
			
			int rowaffected = 	ps.executeUpdate();
			System.out.println(rowaffected + " rows updated ");
			con.close();
			 }catch(Exception e){
				 System.out.println("Error user Dao ADDuser method : " + e);
			 }
	}

	@Override
	public void deleteUser(String userId) {
		// TODO Auto-generated method stub
		try {
			Connection con = DB.getConnection();
			String sql = "delete from user where userId=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, userId);
			int rowaffected = 	ps.executeUpdate();
			System.out.println(rowaffected + " rows Deleted ");
			con.close();
			 }catch(Exception e){
				 System.out.println("Error User Dao AddUser method : " + e);
			 }
	}


}
