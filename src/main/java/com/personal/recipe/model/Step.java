package com.personal.recipe.model;

import javax.persistence.*;

@Entity
public class Step {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	@Lob
    private String description;
	private Integer number;
	
	@ManyToOne
	private Recipe recipe;
	
   

}
