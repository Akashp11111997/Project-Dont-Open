package dao;

import java.util.List;

import model.User;

public interface UserDAO {

	public void addUser(User user);
	public User getUserbyId(String userId);
	public List<User> getAllList();
	public void updateUser(User user);
	public void deleteUser(String userId);
	
	
}
 