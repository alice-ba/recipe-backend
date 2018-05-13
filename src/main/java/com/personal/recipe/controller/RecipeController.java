package com.personal.recipe.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/recipes")
public class RecipeController {

    @RequestMapping(method = RequestMethod.GET)
    String getRecipes() {
        return "Hello recipes";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    String getRecipe(@PathVariable String id) {
        return id;
    }

}
