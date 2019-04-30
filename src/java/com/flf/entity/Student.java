package com.flf.entity;

/**
 * 学生(多方)
 * 
 * @author AdminTC
 */
public class Student {
	private Integer id;
	private String name;
	private String number;
	private String clas;
	private String grade;
	private String teacher;
	private String address;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getClas() {
		return clas;
	}

	public void setClas(String clas) {
		this.clas = clas;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getTeacher() {
		return teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Student(Integer id, String name, String number, String clas, String grade, String teacher, String address) {
		super();
		this.id = id;
		this.name = name;
		this.number = number;
		this.clas = clas;
		this.grade = grade;
		this.teacher = teacher;
		this.address = address;
	}

	public Student() {
		super();
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", number=" + number + ", clas=" + clas + ", grade=" + grade
				+ ", teacher=" + teacher + ", address=" + address + "]";
	}
}