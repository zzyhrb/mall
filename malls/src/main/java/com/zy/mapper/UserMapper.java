package com.zy.mapper;

import java.util.List;
import java.util.Map;

import com.zy.pojo.User;

public interface UserMapper {
	public User get(int id);
	
	public int delete(int id);
	
	public int add (User user);
	
	
	//查询总数
	public int getCount();
	
	public List<User> select(Map<String,Object> param);

	public User getByNameAndPassword(String userName, String password);
	
}
