package fr.formation.afpa.domain;
// Generated 10 mai 2021 12:01:41 by Hibernate Tools 5.2.12.Final

import java.util.Date;

/**
 * Individual generated by hbm2java
 */
public class Individual implements java.io.Serializable {

	private int custId;
	private Customer customer;
	private Date birthDate;
	private String firstName;
	private String lastName;

	public Individual() {
	}

	public Individual(Customer customer, String firstName, String lastName) {
		this.customer = customer;
		this.firstName = firstName;
		this.lastName = lastName;
	}

	public Individual(Customer customer, Date birthDate, String firstName, String lastName) {
		this.customer = customer;
		this.birthDate = birthDate;
		this.firstName = firstName;
		this.lastName = lastName;
	}

	public int getCustId() {
		return this.custId;
	}

	public void setCustId(int custId) {
		this.custId = custId;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Date getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
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

}
