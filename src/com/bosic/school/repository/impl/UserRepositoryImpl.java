package com.bosic.school.repository.impl;

import org.springframework.stereotype.Repository;

import com.bosic.school.domain.User;
import com.bosic.school.repository.UserRepository;

@Repository
public class UserRepositoryImpl extends GenericRepositoryImpl<User, Long> implements UserRepository{
}
