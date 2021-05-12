package fr.formation.afpa.domain;

import java.util.Date;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity

public class Employee {
	// EMP_ID, FIRST_NAME, LAST_NAME,START_DATE, TITLE,END_DATE
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "emp_id", unique = true, nullable = false)
	private Integer empID;
	@Column(name = "first_name", nullable = false)
	private String firstName;
	@Column(name = "last_name", nullable = false)
	private String lastName;
	@Column(name = "title")
	private String title;
	@Temporal(TemporalType.DATE)
	@Column(name = "start_date", nullable = false)
	private Date startDate;
	@Temporal(TemporalType.DATE)
	@Column(name = "end_date")
	private Date endDate;

	@ManyToOne
	@JoinColumn(name = "DEPT_ID")
	private Department department;

	@ManyToOne
	@JoinColumn(name = "SUPERIOR_EMP_ID")
	private Employee supEmployee;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "supEmployee")
	private Set<Employee> employees = new HashSet<Employee>();


	public Employee() {
	}

	public Employee(Integer empID, String firstName, String lastName, String title, Date startDate,
			Employee supEmployee, Set<Employee> employees) {
		super();
		this.empID = empID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.title = title;
		this.startDate = startDate;
		this.supEmployee = supEmployee;
		this.employees = employees;
	}


	public Set<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Integer getEmpID() {
		return empID;
	}

	public void setEmpID(Integer empID) {
		this.empID = empID;
	}

	public String getFirstName() {
		return firstName;
	}

	public Employee getSupEmployee() {
		return supEmployee;
	}

	public void setSupEmployee(Employee supEmployee) {
		this.supEmployee = supEmployee;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	@Override
	public String toString() {
		return firstName + " " + lastName;
	}

}
