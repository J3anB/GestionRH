package fr.formation.afpa.controller;

import java.text.SimpleDateFormat;

import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.formation.afpa.config.EmployeeValidator;
import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.service.EmployeeService;

@Controller
public class MainController {
	private final static Log log = LogFactory.getLog(MainController.class);

	EmployeeService service;

	@Autowired
	EmployeeValidator validator;
	
	// methode qui se lance dès le début 
    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }
	
	@InitBinder
	public void dateBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		CustomDateEditor editor = new CustomDateEditor(dateFormat, true);
		binder.registerCustomEditor(Date.class, editor);
	}

	@Autowired
	public MainController(EmployeeService service) {
		this.service = service;
		System.out.println("MainController Constructor");
	}

	public MainController() {
	}

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
	public String managerList(Model model, Integer empID) {
		List<Employee> list = service.findManager();
		model.addAttribute("listMana", list);
		
		// TEAMLIST  with manager ID 
		List<Employee> listTeam = service.findTeam(empID);
		model.addAttribute("listTeam", listTeam);
		return "manager";
	}

	@GetMapping("/employeeList")
	public String employeeList(@ModelAttribute("employee") Employee employee, Model model) {
		List<Employee> list = service.findAll();
		model.addAttribute("list", list);
		return "employeeList";
	}

	@GetMapping("/addEmployee")
	public String addEmployee(Model model, @ModelAttribute Employee employee) {
		List<Employee> listMana = service.findManager();
		model.addAttribute("listMana", listMana);
		return "addEmployee";
	}

	@PostMapping(path = "/save")
	public String saveEmployee(@ModelAttribute("employee") @Validated Employee employee, BindingResult result, ModelMap model,  Errors errors,
			@RequestParam(value = "supEmployee", required = false) Integer supEmployee) {

		Employee newEmp = new Employee();

		// find Manager
		Employee newManaId = service.findById(supEmployee);
		log.debug(newManaId);

		// validation 
	
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "field.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "field.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "title", "field.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "startDate", "field.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "supEmployee", "field.required");
		
		if(result.hasErrors()) {	
			List<Employee> listMana = service.findManager();
			model.addAttribute("listMana", listMana);
			return "addEmployee";
		}
		newEmp.setFirstName(employee.getFirstName());
		newEmp.setLastName(employee.getLastName());
		newEmp.setTitle(employee.getTitle());
		newEmp.setStartDate(employee.getStartDate());

		newEmp.setSupEmployee(newManaId);
		
		service.save(newEmp);
		model.put("employee", service.findAll());
		return "redirect:/employeeList";
	}

	
	@GetMapping(path="/editEmployee")
	public String editEmployee(Model model, @RequestParam(name="empID") Integer empID) {
		
		Employee employee = service.findById(empID);
		model.addAttribute("employee", employee);
		
		List<Employee> listMana = service.findManager();
		model.addAttribute("listMana", listMana);
		
		return "editEmployee";
	}

	@PostMapping(path = "/update")
	public String updateEmployee(@ModelAttribute("employee") Employee employee, BindingResult result,
			ModelMap model, @RequestParam(value = "supEmployee", required = false) Integer supEmployee) {
		
		// find manager ID 
		Employee newManaId = service.findById(supEmployee);
			
		// set attr
		
		employee.setFirstName(employee.getFirstName());
		employee.setLastName(employee.getLastName());
		employee.setTitle(employee.getTitle());
		employee.setStartDate(employee.getStartDate());
		employee.setSupEmployee(newManaId);
		
		// update
		service.update(employee);
		
		model.put("employee", service.findAll());
		return "redirect:/employeeList";
	}

	@GetMapping(path = "/delete")
	public String delete(@ModelAttribute("employee") Employee employee, Model model,
			@RequestParam(name = "empID") Integer empID) {
		service.deleteById(empID);

		return "redirect:/employeeList";
	}

	@GetMapping("/parametres")
	public String parametres(Model model) {
		List<Employee> listMana = service.findManager();
		model.addAttribute("listMana", listMana);

		List<Employee> list = service.findOrphans();
		model.addAttribute("listOprh", list);

		return "parametres";
	}
	
	@GetMapping("/teamEmployee")
	public String teamEmployee(Model model, @RequestParam(name="empID") Integer empID) {
			// Manager ID to display firstName & lastName in teamList
			Employee employeeId = service.findById(empID);
			model.addAttribute("employeeId", employeeId);

			// TEAMLIST  with manager ID 
			List<Employee> listTeam = service.findTeam(empID);
			model.addAttribute("listTeam", listTeam);
		return "teamEmployee";
	}
	
	@GetMapping("/teamList")
	public String teamList(Model model, @RequestParam(name="empID") Integer empID) {
			// Manager ID to display firstName & lastName in teamList
			Employee employeeId = service.findById(empID);
			model.addAttribute("employeeId", employeeId);

			// TEAMLIST  with manager ID 
			List<Employee> manaTeam = service.findTeam(empID);
			model.addAttribute("manaTeam", manaTeam);
		return "teamList";
	}
	

	// END REDIRECT CONTROLLERS

}