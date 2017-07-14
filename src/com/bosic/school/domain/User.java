package com.bosic.school.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity	// 表示 业务实体（领域模型）
@Table(name="users")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@SequenceGenerator(name="generator", sequenceName="USERS_SEQ", initialValue=1, allocationSize=1)
	@GeneratedValue(generator="generator", strategy=GenerationType.SEQUENCE)
	private Long id;
	@Column
	private String username;
	@Column
	private String password;
	
	public User() {
		super();
	}
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + "]";
	}
}
