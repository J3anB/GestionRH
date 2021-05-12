package fr.formation.afpa.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


import fr.formation.afpa.dao.EmployeeDao;
import fr.formation.afpa.dao.IEmployeeDao;
import fr.formation.afpa.domain.Employee;

@Service
@Transactional
public class EmployeeService implements IEmployeeService {
	
	@Autowired
	private IEmployeeDao dao;


	public IEmployeeDao getDao() {
		return dao;
	}

	public void setDao(IEmployeeDao dao) {
		this.dao = dao;
	}

	@Override
	public Employee findById(Integer id) {
		dao.beginTransaction();
		Employee emp = dao.findById(id);
		dao.commitAndCloseTransaction();
		return emp;
	}
	
	@Override
	public Employee findAndDeleteById(Integer id) {
		Employee emp = dao.findById(id);
		return emp;
	}
	
	@Override
	public List<Employee> findAll() {
		dao.beginTransaction();
		List<Employee> list = dao.findAll();
		dao.commitAndCloseTransaction();
		return list;
	}

	@Override
	public List<Employee> findManager() {
		dao.beginTransaction();
		List<Employee> list = dao.findManager();
		dao.commitAndCloseTransaction();
		return list;
	}

	@Override
	public List<Employee> findOrphans() {
		dao.beginTransaction();
		List<Employee> list = dao.findOrphans();
		dao.commitAndCloseTransaction();
		return list;
	}
	
	
	@Override
	public Employee save(Employee e) {
		dao.beginTransaction();
		dao.save(e);
		dao.commitAndCloseTransaction();
		return e;
	}

	@Override
	public Employee update(Employee e) {
		dao.beginTransaction();
		dao.update(e);
		dao.commitTransaction();
		return e;
	}

	@Override
	public void delete(Employee e) {

		dao.delete(e);

	}

	@Override
	public void deleteById(Integer id) {
		dao.beginTransaction();
		delete(findAndDeleteById(id));
		dao.commitTransaction();
	}





}
