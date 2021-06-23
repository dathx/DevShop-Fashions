package com.dat.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@SuppressWarnings("serial")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity 
@Table(name = "Categories")
public class Category implements Serializable{
	@Id 
	@NotBlank(message = "Id empty")
	String id;
	@NotBlank(message = "Name empty")
	String name;
	@JsonIgnore
	@OneToMany(mappedBy = "category")
	List<Product> products;
}
