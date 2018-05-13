package com.personal.recipe.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

public class Ingredient {
	private Long id;
	private String name;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "element")
    private Set<Element> elements= new HashSet<>();
	
	
}
