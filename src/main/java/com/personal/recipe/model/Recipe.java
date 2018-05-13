package com.personal.recipe.model;

import javax.persistence.*;
import java.time.Duration;
import java.util.HashSet;
import java.util.Set;


@Entity
public class Recipe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long recipe_id;
    private String name;
    
    @Enumerated(value = EnumType.STRING)
    private Course course;
    
    private Duration prepTime;
    private Duration cookTime;
    private Integer serving;
    
    @Enumerated(value = EnumType.STRING)
    private Integer rating;
    
    @Lob
    private String description;
    
    //recipe -> element
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recipe")
    private Set<Element> elements= new HashSet<>();

    //recipe -> steps
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recipe")
    private Set<Step> steps = new HashSet<>();;
    
    //recipe -> category
    @ManyToMany
    @JoinTable(name="recipe_category",
            joinColumns = @JoinColumn(name ="recipe_id"),
            inverseJoinColumns = @JoinColumn(name="category_id"))
    private Set<Category> categories = new HashSet<>();



}
