package dao;

import org.apache.ibatis.session.SqlSession;

import dto.Patient;
import util.MybatisSqlSessionFactory;

public class PatientDaoImpl implements PatientDao {

	SqlSession sqlSession= MybatisSqlSessionFactory.getSqlSessionFactory().openSession();

	@Override
	public Patient selectPatient(String pidnum) throws Exception {
		return sqlSession.selectOne("mapper.patient.selectPatient",pidnum);
	}

	@Override
	public void insertPatient(Patient patient) throws Exception {
		sqlSession.insert("mapper.patient.insertPatient",patient);
		sqlSession.commit();

	}

}