package com.personal.recipe.model;

import javax.persistence.*;
import java.time.Duration;
import java.util.Set;


@Entity
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private Course course;
    private Duration prepTime;
    private Duration cookTime;
    private Integer serving;
    private Integer rating;
    @Lob
    private String description;

    private Set<Element> elements;

    private Set<Step> steps;


}
