package com.personal.recipe.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Element {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @ManyToOne
    private Ingredient ingredient;

    private Integer number;
    
    @ManyToOne
    private UnitOfMeasure unitOfMeasure;

    @ManyToOne
    private Recipe recipe;
}
