package com.bosic.school.service.impl;

import org.springframework.stereotype.Service;

import com.bosic.school.domain.Student;
import com.bosic.school.service.StudentService;

@Service
public class StudentServiceImpl extends GenericServiceImpl<Student, Long> implements StudentService{
}
