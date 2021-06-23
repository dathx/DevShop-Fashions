package com.dat.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "Accounts")
public class Account  implements Serializable{
	@Id
	@NotBlank(message = "Username empty")
	String username;
	@Size(min = 3,message = "Password must be more than 3 characters")
	@NotBlank(message = "Password empty")
	String password;
	@NotBlank(message = "Fullname empty")
	String fullname;
	@NotBlank(message = "Email empty")
	String email;
	String image;
	boolean role;
	boolean activated;
	@JsonIgnore
	@OneToMany(mappedBy = "account")
	List<Order> orders;
	
	
}
