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
		Employee emp = dao.findById(id);
		return emp;
	}

	@Override
	public List<Employee> findAll() {
		List<Employee> list = dao.findAll();
		return list;
	}

	@Override
	public List<Employee> findManager() {
		List<Employee> listMana = dao.findManager();
		return listMana;
	}

	@Override
	public Employee save(Employee e) {
		dao.save(e);
		return e;
	}

	@Override
	public Employee update(Employee e) {
		dao.update(e);
		return e;

	}

	@Override
	public void delete(Employee e) {
		dao.delete(e);

	}

	@Override
	public void deleteById(Integer id) {
		delete(findById(id));

	}



}
