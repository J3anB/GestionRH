package fr.formation.afpa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.service.EmployeeService;

@Controller
public class MainController {

	EmployeeService service;

	@Autowired
    public MainController(EmployeeService service) {
        this.service = service;
       System.out.println(" passage contructeur");
    }

	public MainController() {
	}

//	@GetMapping("/")
//	public String example(Model model) {
//		List<Employee> list = service.findAll();
//		System.out.println("**********************************coucou*********************************************");
//		System.out.println(list);
//		model.addAttribute("listemployee", list);
//		return "index";
//	}

	// REDIRECT CONTROLLERS
	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/index")
	public String homePage() {
		return "index";
	}

	@GetMapping("/aboutUs")
	public String aboutUs() {
		return "aboutUs";
	}

	@GetMapping("/contactUs")
	public String contactUs() {
		return "contactUs";
	}

	@GetMapping("/managerList")
	public String managerList(Model model) {
		List<Employee> list = service.findAll();
		System.out.println(list);
		for(Employee c : list) {
			model.addAttribute("listemployee", c);
			System.out.println(c);
		}
		
		return "manager";
	}

	@GetMapping("/employeeList")
	public String employeeList() {
		return "employeeList";
	}

	@GetMapping("/addEmployee")
	public String addEmployee() {
		return "addEmployee";
	}

	@GetMapping("/editEmployee")
	public String editEmployee() {
		return "editEmployee";
	}

	@GetMapping("/parametres")
	public String parametres() {
		return "parametres";
	}

	// END REDIRECT CONTROLLERS

}