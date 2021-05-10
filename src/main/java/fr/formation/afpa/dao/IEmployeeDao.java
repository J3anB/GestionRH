package fr.formation.afpa.dao;

import java.util.List;

import fr.formation.afpa.domain.Employee;

public interface IEmployeeDao {
	//Read
		Employee findById(Integer id);
		List<Employee> findAll();
		
		//Create
		Integer save(Employee e);
		
		//update
		Employee update(Employee e);
		List<Employee> findManager();
		//delete
		void delete(Employee e);
		void deleteById(Integer id);
}
