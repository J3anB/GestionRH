package fr.formation.afpa.domain;
// Generated 10 mai 2021 09:55:36 by Hibernate Tools 5.2.12.Final

import java.util.Date;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;

/**
 * Employee generated by hbm2java
 */
@Entity
public class Employee implements java.io.Serializable {

	private Integer empId;
	private Employee employee;
	private Date endDate;
	private String firstName;
	private String lastName;
	private Date startDate;
	private String title;
	private Integer assignedBranchId;
	private Integer deptId;
	private Set employees = new HashSet(0);

	public Employee() {
	}

	public Employee(String firstName, String lastName, Date startDate) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.startDate = startDate;
	}

	public Employee(Employee employee, Date endDate, String firstName, String lastName, Date startDate, String title,
			Integer assignedBranchId, Integer deptId, Set employees) {
		this.employee = employee;
		this.endDate = endDate;
		this.firstName = firstName;
		this.lastName = lastName;
		this.startDate = startDate;
		this.title = title;
		this.assignedBranchId = assignedBranchId;
		this.deptId = deptId;
		this.employees = employees;
	}

	public Integer getEmpId() {
		return this.empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public Employee getEmployee() {
		return this.employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getAssignedBranchId() {
		return this.assignedBranchId;
	}

	public void setAssignedBranchId(Integer assignedBranchId) {
		this.assignedBranchId = assignedBranchId;
	}

	public Integer getDeptId() {
		return this.deptId;
	}

	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}

	public Set getEmployees() {
		return this.employees;
	}

	public void setEmployees(Set employees) {
		this.employees = employees;
	}

}