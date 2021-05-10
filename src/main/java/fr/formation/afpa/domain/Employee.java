package fr.formation.afpa.domain;
// Generated 10 mai 2021 12:02:38 by Hibernate Tools 5.2.12.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Employee generated by hbm2java
 */
@Entity
@Table(name = "employee", catalog = "bd")
public class Employee implements java.io.Serializable {
	
	private Integer empId;
	
	private Department department;
	private Employee employee;
	private Date endDate;
	private String firstName;
	private String lastName;
	private Date startDate;
	private String title;
	private Integer assignedBranchId;
	private Set<Employee> employees = new HashSet<Employee>(0);

	public Employee() {
	}

	public Employee(String firstName, String lastName, Date startDate) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.startDate = startDate;
	}

	public Employee(Department department, Employee employee, Date endDate, String firstName, String lastName,
			Date startDate, String title, Integer assignedBranchId, Set<Employee> employees) {
		this.department = department;
		this.employee = employee;
		this.endDate = endDate;
		this.firstName = firstName;
		this.lastName = lastName;
		this.startDate = startDate;
		this.title = title;
		this.assignedBranchId = assignedBranchId;
		this.employees = employees;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "EMP_ID", unique = true, nullable = false)
	public Integer getEmpId() {
		return this.empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "DEPT_ID")
	public Department getDepartment() {
		return this.department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SUPERIOR_EMP_ID")
	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "END_DATE", length = 10)
	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	@Column(name = "FIRST_NAME", nullable = false, length = 20)
	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "LAST_NAME", nullable = false, length = 20)
	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "START_DATE", nullable = false, length = 10)
	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	@Column(name = "TITLE", length = 20)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "ASSIGNED_BRANCH_ID")
	public Integer getAssignedBranchId() {
		return this.assignedBranchId;
	}

	public void setAssignedBranchId(Integer assignedBranchId) {
		this.assignedBranchId = assignedBranchId;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "employee")
	public Set<Employee> getEmployees() {
		return this.employees;
	}

	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}

}
