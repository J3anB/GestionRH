package fr.formation.afpa.dao;

import java.util.List;

import fr.formation.afpa.domain.Employee;

public interface IEmployeeDao {
		//Read
		Employee findById(Integer id);
		List<Employee> findAll();
		List<Employee> findManager();
		List<Employee> findOrphans();
		
		//Create
		Integer save(Employee e);
		
		//update
		Employee update(Employee e);

		//delete
		void delete(Employee e);
		void deleteById(Integer id);
		Employee findAndDeleteById(Integer id);
		
		// Transactions
		void beginTransaction();
		void commitAndCloseTransaction();
		void commitTransaction();
}
