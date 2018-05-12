package com.personal.recipe.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RecipeController {

    @RequestMapping("/recipes")
    String getRecipes() {
        return "Hello recipes";
    }

}
