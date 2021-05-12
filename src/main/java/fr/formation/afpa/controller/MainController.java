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
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.afpa.domain.Employee;
import fr.formation.afpa.service.EmployeeService;

@Controller
public class MainController {
	private final static Log log = LogFactory.getLog(MainController.class);

	EmployeeService service;

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
	public String managerList(Model model) {
		List<Employee> list = service.findManager();
		model.addAttribute("listMana", list);
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
	public String saveEmployee(@ModelAttribute("employee") Employee employee, BindingResult result, ModelMap model,
			@RequestParam(value = "supEmployee", required = false) Integer supEmployee) {

		Employee newEmp = new Employee();

		// find Manager
		Employee newManaId = service.findById(supEmployee);
		log.debug(newManaId);

		// set Attr
		newEmp.setFirstName(employee.getFirstName());
		newEmp.setLastName(employee.getLastName());
		newEmp.setTitle(employee.getTitle());
		newEmp.setStartDate(employee.getStartDate());

		newEmp.setSupEmployee(newManaId);
		
		service.save(newEmp);
		model.put("employee", service.findAll());
		return "redirect:/employeeList";
	}

	@GetMapping("/editEmployee")
	public ModelAndView editEmployee(@RequestParam(name = "empID") Integer empID, Model model) {

		List<Employee> listMana = service.findManager();
		model.addAttribute("listMana", listMana);
		
		ModelAndView mav = new ModelAndView("editEmployee");
	
		Employee edEmp = service.findById(empID);
		mav.addObject("employee", edEmp);
		return mav;
	}

	@PostMapping(path = "/update")
	public String updateEmployee(@ModelAttribute("employee") Employee employee, Date date, BindingResult result,
			ModelMap model, @RequestParam(value = "supEmployee", required = false) Integer supEmployee) {
		
		// instance edited emp
		Employee eddEmp = service.findById(employee.getEmpID());
		Employee newMana = new Employee();
		
		newMana = service.findById(supEmployee);
		
		// set attr
		eddEmp.setFirstName(employee.getFirstName());
		eddEmp.setLastName(employee.getLastName());
		eddEmp.setTitle(employee.getTitle());
		eddEmp.setStartDate(employee.getStartDate());
		eddEmp.setSupEmployee(newMana);
		// update
		service.update(eddEmp);
		
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

	// END REDIRECT CONTROLLERS

}