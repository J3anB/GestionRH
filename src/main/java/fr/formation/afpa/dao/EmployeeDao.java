package fr.formation.afpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Repository;

import fr.formation.afpa.domain.Employee;

@Repository
public class EmployeeDao implements IEmployeeDao {
	private EntityManagerFactory emf;
	private EntityManager em;

	public EmployeeDao() {
		emf = Persistence.createEntityManagerFactory("bd");
		em = emf.createEntityManager();
	}

	public void beginTransaction() {
		em = emf.createEntityManager();
		em.getTransaction().begin();
	}
	
	public void commitTransaction() {
		em.getTransaction().commit();
	}
	public void commitAndCloseTransaction() {
		em.getTransaction().commit();
		em.close();
	}

	public void closeTransaction() {
		em.close();
	}

	
	@Override
	public Employee findById(Integer id) {
		return em.find(Employee.class, id);
	}
	
	
	@Override
	public Employee findAndDeleteById(Integer id) {
		return em.find(Employee.class, id);
	}

	
	@Override
	public List<Employee> findAll() {
		return em.createQuery("select emp from Employee emp").getResultList();
	}

	@Override
	public List<Employee> findManager(){
	      return em.createQuery("select distinct supEmployee from Employee superior_emp").getResultList(); 
	}
	
	@Override
	public List<Employee> findOrphans(){
		return em.createQuery("select emp from Employee emp where supEmployee is null").getResultList();
	}
	
	@Override
	public Integer save(Employee e) {
		em.persist(e);
		return e.getEmpID();
	}

	@Override
	public Employee update(Employee e) {
		return em.merge(e);
	}

	@Override
	public void delete(Employee e) {
		em.remove(e);
	}

	@Override
	public void deleteById(Integer id) {
		Employee emp = findById(id);
		delete(emp);

	}

}
