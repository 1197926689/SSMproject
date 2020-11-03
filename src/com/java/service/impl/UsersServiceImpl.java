package com.java.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.UsersMapper;
import com.java.po.Users;
import com.java.service.UsersService;

@Service
public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersMapper usersMapper;
	
	public boolean selectAdmin(Users user) {
		Boolean result = false;
		Users ad = usersMapper.selectByUserName(user);
		if(!ad.getUid().equals(null)||!ad.getUid().equals("")) {
			result = true;
		}
		return result;
	}

}
