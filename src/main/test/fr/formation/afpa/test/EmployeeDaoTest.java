package fr.formation.afpa.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import fr.formation.afpa.domain.Employee;

public class EmployeeDaoTest {
	private final static Log log = LogFactory.getLog(EmployeeDaoTest.class);
	private static EntityManagerFactory emf;
	private static EntityManager em;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("bd");
		em = emf.createEntityManager();
	}
	
	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		em.getTransaction().begin();
		log.debug("begin transaction");
	}
	
	
	@Test
	public void testFindById() {
		log.debug("creation de employee");
		Employee emp = new Employee();
		emp.setFirstName("Marco");
    	emp.setLastName("Polo");
    	emp.setStartDate(new Date());
    	em.persist(emp);
    	Integer idInsert = emp.getEmpId();
    	Employee e = em.find(Employee.class, idInsert);
		assertNotNull(e);
		assertEquals(e.getFirstName(), emp.getFirstName());
		assertEquals(e.getLastName(), emp.getLastName());
	}

	@Test
	public void testFindAll() {
		List<Employee> list  = em.createQuery("select e from Employee e").getResultList();
			for(Employee emp : list) {
				log.debug(emp);
			}
	}

	@Test
	public void testSave() {
		Employee emp = new Employee();
    	emp.setFirstName("Marco");
    	emp.setLastName("Polo");
    	emp.setStartDate(new Date());
    	em.persist(emp);    	
    	Integer idInsert = emp.getEmpId();
    	log.debug("IdInsert  :" + idInsert);
    	assertNotNull("Id not null",idInsert);
	}

	@Test
	public void testSaveOrUpdate() {
		Employee emp = new Employee();
    	emp.setFirstName("Marco");
    	emp.setLastName("Polo");
    	emp.setStartDate(new Date());
    	em.persist(emp); 
    	Integer idInsert = emp.getEmpId();
    	emp.setFirstName("Alice");    	
		Employee empUpdate = em.merge(emp);
		assertNotNull(empUpdate);
		Employee efind = em.find(Employee.class, idInsert);
		assertEquals(empUpdate.getFirstName(), efind.getFirstName());
	}

	@Test
	public void testUpdate() {
		Employee emp = new Employee();
    	emp.setFirstName("Marco");
    	emp.setLastName("Polo");
    	emp.setStartDate(new Date());
    	em.persist(emp); 
    	Integer idInsert = emp.getEmpId();
    	emp.setFirstName("Alice");    	
		Employee empUpdate = em.merge(emp);
		assertNotNull(empUpdate);
		Employee efind = em.find(Employee.class, idInsert);
		assertEquals(empUpdate.getFirstName(), efind.getFirstName());
	}

	@Test
	public void testDelete() {
		Employee emp = new Employee();
    	emp.setFirstName("Alice");
    	emp.setLastName("Cooper");
    	emp.setStartDate(new Date());
    	em.persist(emp); 
  	    Integer idInsert = emp.getEmpId();
 	    log.info("ID Employee Insert : " +idInsert);
 	    em.remove(emp);
 	    Employee empInsert = em.find(Employee.class, idInsert);
 	    assertNotNull(idInsert);
	}


}
