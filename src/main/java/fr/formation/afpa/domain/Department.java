package fr.formation.afpa.domain;

import java.util.HashSet;



import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Department {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "DEPT_ID", unique = true, nullable = false)
	private Integer dept_id ;
	
	@Column
	private String name;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "department")
	private Set<Employee> employees = new HashSet<Employee>();
	
	
	
	public Department() {
		super();
	}

	public Integer getDept_id() {
		return dept_id;
	}

	public void setDept_id(Integer dept_id) {
		this.dept_id = dept_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Department [dept_id=" + dept_id + ", name=" + name + "]";
	}

	public Set<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}
	
	
}
