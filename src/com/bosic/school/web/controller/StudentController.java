package com.bosic.school.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.bosic.school.domain.Student;
import com.bosic.school.service.PagedList;
import com.bosic.school.service.StudentService;

@Controller
@Scope("prototype")
public class StudentController {
	// ---------------------------
	// service 业务逻辑类
	// ---------------------------
	@Autowired
	private StudentService studentService;
	// ---------------------------
	// model 数据模型
	// ---------------------------
	private Long id; // 第几页，修改，删除时的学生id
	private Long[] ids; // 批量删除
	private Student student; // 新增，修改
	private PagedList<Student> students; // 分页查询

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long[] getIds() {
		return ids;
	}

	public void setIds(Long[] ids) {
		this.ids = ids;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public PagedList<Student> getStudents() {
		return students;
	}

	public void setStudents(PagedList<Student> students) {
		this.students = students;
	}

	// --------------------------
	// action 行为集合
	// --------------------------
	public String index() throws Exception {
		int pageIndex = id == null ? 1 : id.intValue();
		int pageSize = 15;

		students = studentService.findPage(pageIndex, pageSize);

		return "index";
	}

	// 进入新增页面
	public String create() throws Exception {
		return "create";
	}

	// 进入编辑页面
	public String edit() throws Exception {
		student = studentService.find(id);
		
		return "edit";
	}

	// 保存新增或修改
	public String save() throws Exception {
		if(student.getId() == null){
			studentService.add(student);
		} else {
			studentService.update(student);
		}
		return "save";
	}

	// 删除或者批量删除
	public String delete() throws Exception {
		if (id != null) {
			studentService.delete(id);
		} else if(ids != null){
			studentService.delete(ids);
		}
		return "delete";
	}
}
