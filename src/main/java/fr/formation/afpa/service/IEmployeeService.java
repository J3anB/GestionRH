package fr.formation.afpa.service;

import java.util.List;

import fr.formation.afpa.domain.Employee;

public interface IEmployeeService {
	//Read
	Employee findById(Integer id);
	List<Employee> findAll();
	List<Employee> findManager();
	List<Employee> findOrphans();
	Employee findAndDeleteById(Integer id);
	
	// save
	Employee save(Employee t);
	Employee update(Employee t);
	// delete
	void delete(Employee t);
	void deleteById(Integer id);
}
