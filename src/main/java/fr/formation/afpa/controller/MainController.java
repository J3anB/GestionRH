package fr.formation.afpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

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
	public String managerList() {
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