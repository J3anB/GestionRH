package fr.formation.afpa.service;

import java.util.List;

import fr.formation.afpa.domain.Employee;

public interface IEmployeeService {
	//Read
	Employee findAndDeleteById(Integer id);
	Employee findById(Integer id);
	List<Employee> findAll();
	List<Employee> findManager();
	List<Employee> findOrphans();
	List<Employee> findTeam(Integer id);
	
	// create
	Employee save(Employee t);
	// update
	Employee update(Employee t);
	
	// delete
	void delete(Employee t);
	void deleteById(Integer id);

}
