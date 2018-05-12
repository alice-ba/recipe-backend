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
	
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
	
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

}
