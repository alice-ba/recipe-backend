package com.personal.recipe.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Element {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Ingredient ingredient;

    private Integer number;

    private UnitOfMeasure unitOfMeasure;

    //private Set<Recipe> recipes;
}
