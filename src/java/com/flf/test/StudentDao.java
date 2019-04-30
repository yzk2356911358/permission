package com.flf.test;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.flf.entity.Student;
import com.flf.util.MybatisUtil;

public class StudentDao {
	public List<Student> findAllStudent() throws Exception {
		// 得到连接对象
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		try {
			return sqlSession.selectList("studentNamespace.findAllStudent");
			/* sqlSession.commit(); */
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		} finally {
			MybatisUtil.closeSqlSession();
		}
	}

	public Student findStudentById(int id) throws Exception {
		// 得到连接对象
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		try {
			return (Student) sqlSession.selectOne("studentNamespace.findById", id);
			/* sqlSession.commit(); */
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		} finally {
			MybatisUtil.closeSqlSession();
		}
	}

	public void delete(int id) throws Exception {
		// 得到连接对象
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		try {
			// 映射文件的命名空间.SQL片段的ID，就可以调用对应的映射文件中的SQL
			sqlSession.delete("studentNamespace.delete", id);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		} finally {
			MybatisUtil.closeSqlSession();
		}
	}

	public void add(Student student) throws Exception {
		// 得到连接对象
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		try {
			// 映射文件的命名空间.SQL片段的ID，就可以调用对应的映射文件中的SQL
			sqlSession.insert("studentNamespace.add", student);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		} finally {
			MybatisUtil.closeSqlSession();
		}
	}

	public void update(Student student) throws Exception {
		// 得到连接对象
		SqlSession sqlSession = MybatisUtil.getSqlSession();
		try {
			// 映射文件的命名空间.SQL片段的ID，就可以调用对应的映射文件中的SQL
			sqlSession.update("studentNamespace.update", student);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			throw e;
		} finally {
			MybatisUtil.closeSqlSession();
		}
	}
//
//	public static void main(String[] args) throws Exception {
//		StudentDao studentDao = new StudentDao();
//		Student student = studentDao.findStudentById(2);
//		System.out.println(student);
//		student.setAddress("dsds");
//		student.setClas("dsds");
//		student.setGrade("dsds");
//		student.setName("2132");
//		student.setNumber("12121212");
//		student.setTeacher("sd13");
//		studentDao.update(student);
//	}

}
