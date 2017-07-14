package com.bosic.school.service;

import com.bosic.school.domain.User;

public interface UserService extends GenericService<User, Long>{
	boolean login(String username, String password);
}
