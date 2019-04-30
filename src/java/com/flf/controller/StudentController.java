package com.flf.controller;

import java.io.PrintWriter;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.flf.entity.Student;
import com.flf.test.StudentDao;

@Controller
@RequestMapping(value = "/student")
public class StudentController {
	private StudentDao studentDao;

	/**
	 * 导出用户信息到excel
	 * 
	 * @return
	 */
	@RequestMapping(value = "/add")
	public ModelAndView export2Excel(Student student) {
		ModelAndView mv = new ModelAndView();
		studentDao = new StudentDao();
		try {
			studentDao.add(student);
			System.out.println(student);
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			mv.addObject("studentList", studentDao.findAllStudent());
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("studentlist");
		return mv;
	}

	@RequestMapping(value = "/getallstudent")
	public ModelAndView getallstudent() {
		ModelAndView mv = new ModelAndView();
		studentDao = new StudentDao();
		try {
			mv.addObject("studentList", studentDao.findAllStudent());
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("studentlist");
		return mv;
	}

	@RequestMapping(value = "/delete")
	public ModelAndView delete(@RequestParam int id) {
		try {
			studentDao.delete(id);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		ModelAndView mv = new ModelAndView();
		studentDao = new StudentDao();
		try {
			mv.addObject("studentList", studentDao.findAllStudent());
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(id);
		mv.setViewName("studentlist");
		return mv;
	}

	@RequestMapping(value = "/get")
	public ModelAndView get(@RequestParam int id) {
		ModelAndView mv = new ModelAndView();
		studentDao = new StudentDao();
		try {
			mv.addObject("student", studentDao.findStudentById(id));
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(id);
		mv.setViewName("updateStudent");
		return mv;
	}

	@RequestMapping(value = "/update")
	public ModelAndView update(Student student) {
		ModelAndView mv = new ModelAndView();
		studentDao = new StudentDao();
		try {
			studentDao.update(student);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			mv.addObject("studentList", studentDao.findAllStudent());
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("studentlist");
		return mv;
	}

	@RequestMapping(value = "/getbyname")
	public ModelAndView getbyname(String name) {
		studentDao = new StudentDao();
		ModelAndView mv = new ModelAndView();
		try {
			for (Student student : studentDao.findAllStudent()) {
				if (student.getName().equals(name)) {
					mv.addObject("student", student);
				}
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		System.out.println(name);
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("selectStudent");
		return mv;
	}
}
