package com.bosic.school.service.impl;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bosic.school.domain.Student;
import com.bosic.school.service.PagedList;
import com.bosic.school.service.StudentService;

import junit.framework.TestCase;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring.xml", "classpath:spring-hibernate.xml"})
public class StudentServiceImplTest {
	@Autowired
	private StudentService studentService;
	
	@Test
	public void testAdd() {
		Student student = new Student();
		student.setStudentNumber("999");
		student.setStudentName("bxy");
		
		studentService.add(student);
		
		TestCase.assertNotNull(student.getId());
	}

	@Test
	public void testUpdate() {
		Student student = new Student();
		student.setStudentNumber("999");
		student.setStudentName("bxy");
		student.setId(2L);
		
		studentService.update(student);
		
		Student student2 = studentService.find(2L);
		
		TestCase.assertEquals("bxy", student2.getStudentName());
	}

	@Test
	public void testDeletePK() {
		studentService.delete(100L);
		
		Student student = studentService.find(100L);
		
		TestCase.assertNull(student);
	}

	@Test
	public void testFindPK() {
		Student student = studentService.find(1L);
		
		TestCase.assertNotNull(student);
		
		Student student2 = studentService.find(100L);
		
		TestCase.assertNull(student2);
	}

	@Test
	public void testFindAll() {
		List<Student> students = studentService.findAll();
		
		TestCase.assertTrue(students.size() > 0);
	}

	@Test
	public void testFindPageIntInt() {
		PagedList<Student> students = studentService.findPage(1, 10);
		
		TestCase.assertTrue(students.getRows().size() >= 0 && students.getRows().size() <= 10 );
	}
}
