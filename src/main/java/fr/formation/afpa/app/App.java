package fr.formation.afpa.app;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fr.formation.afpa.dao.EmployeeDao;
import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.service.EmployeeService;

public class App {
	private final static Log log = LogFactory.getLog(EmployeeDao.class);
	
	public static void main(String[] args) {
		EmployeeService empServ = new EmployeeService();
		EmployeeDao dao = new EmployeeDao();
		dao.beginTransaction();
		List<Employee> list = empServ.findAll();
		for(Employee c : list) {
			log.debug(c);
		}
//		log.debug(list);
		dao.commitAndCloseTransaction();
	}

}
