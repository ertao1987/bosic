package com.bosic.school.repository.impl;

import org.springframework.stereotype.Repository;

import com.bosic.school.domain.Student;
import com.bosic.school.repository.StudentRepository;

@Repository
public class StudentRepositoryImpl extends GenericRepositoryImpl<Student, Long> implements StudentRepository{
}
