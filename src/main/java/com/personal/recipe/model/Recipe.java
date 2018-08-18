package com.personal.recipe.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.time.Duration;
import java.util.HashSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;


@Entity
public class Recipe{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

    @ManyToOne
    private Course course;

    private Duration prepTime;
    private Duration cookTime;
    private Integer serving;


    private String url;

    @Enumerated(value = EnumType.STRING)
    private Rating rating;

    @Lob
    private String description;

    //recipe -> element
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recipe")
    private Set<Element> elements= new HashSet<>();

    //recipe -> steps
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recipe")
    @javax.persistence.OrderBy("number")
    private SortedSet<Step> steps = new TreeSet<Step>();
   
    //recipe -> category
    @ManyToMany
    @JoinTable(name="recipe_category",
            joinColumns = @JoinColumn(name ="recipe.id"),
            inverseJoinColumns = @JoinColumn(name="category.id"))
    private Set<Category> categories = new HashSet<>();


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public Duration getPrepTime() {
        return prepTime;
    }

    public void setPrepTime(Duration prepTime) {
        this.prepTime = prepTime;
    }

    public Duration getCookTime() {
        return cookTime;
    }

    public void setCookTime(Duration cookTime) {
        this.cookTime = cookTime;
    }

    public Integer getServing() {
        return serving;
    }

    public void setServing(Integer serving) {
        this.serving = serving;
    }

    public Rating  getRating() {
        return rating;
    }

    public void setRating(Rating rating) {
        this.rating = rating;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<Element> getElements() {
        return elements;
    }

    public void setElements(Set<Element> elements) {
        this.elements = elements;
    }

    public SortedSet<Step> getSteps() {
        return steps;
    }

    public void setSteps(SortedSet<Step> steps) {
        this.steps = steps;
    }
    
   
    public Set<Category> getCategories() {
        return categories;
    }

    public void setCategories(Set<Category> categories) {
        this.categories = categories;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
