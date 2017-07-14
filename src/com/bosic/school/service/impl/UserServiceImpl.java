package com.bosic.school.service.impl;

import org.springframework.stereotype.Service;

import com.bosic.school.domain.User;
import com.bosic.school.service.UserService;

@Service
public class UserServiceImpl extends GenericServiceImpl<User, Long> implements UserService{

	@Override
	public boolean login(String username, String password) {
		User user = super.genericRepository.find("where u.username = ?", username);
		
		return user != null && user.getPassword().equals(password);
	}
}
