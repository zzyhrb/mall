package com.zy.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zy.mapper.UserMapper;
import com.zy.pojo.User;

@Service
public class UserService {
	private SqlSession sqlSession;

	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public User get(int id) {
		return sqlSession.getMapper(UserMapper.class).get(id);
	}

	public int delete(int id) {
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		userMapper.delete(1);
		if (1 == 1) {
			throw new RuntimeException("自定义异常");
		}
		userMapper.delete(2);
		return 1;
	}
	
	public boolean add(User user) {
		return 1 == sqlSession.getMapper(UserMapper.class).add(user);
	}
	
	//查询总记录数
	public int getCount(){
		return  sqlSession.getMapper(UserMapper.class).getCount();
	}
	
	
	public List<User> select(Map<String,Object> param){
		
		return sqlSession.getMapper(UserMapper.class).select(param);
		
	}

	public User getByNameAndPassword(String userName, String password) {
		
		return sqlSession.getMapper(UserMapper.class).getByNameAndPassword(userName,password);
	}
}
