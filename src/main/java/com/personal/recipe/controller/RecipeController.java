package com.personal.recipe.controller;

import com.personal.recipe.model.Recipe;
import com.personal.recipe.repositories.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/recipes")
public class RecipeController {

    private final RecipeRepository recipeRepository;

    @Autowired
    public RecipeController(RecipeRepository recipeRepository) {
        this.recipeRepository = recipeRepository;
    }

    @GetMapping()
    public Iterable<Recipe> getRecipes() {
        return recipeRepository.findAll();
    }

    @GetMapping(value = "/{id}")
    public Optional<Recipe> getRecipe(@PathVariable Long id) {
        return recipeRepository.findById(id);
    }

}
