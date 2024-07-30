// Classes
// Classes are meant to be used when you want to change data of multiple items at a time
// Structs are meant to be used when you only want to change data of one item.
// Classes are reference types, while structs are value types.

import UIKit

class Recipe {
    var ingredients: [String]
    var isAvailable: Bool = false
    
    init(ingredients: [String]) {
        self.ingredients = ingredients
    }
}

// Create a recipe variable
var cookieRecipe = Recipe(ingredients: ["Flour", "Sugar", "Butter"])

// Copy the original recipe to another variable
var cookieRecipe2 = cookieRecipe

// Change the recipe
cookieRecipe2.ingredients = ["Flour", "Sugar", "Butter", "Chocolate chips"]


// Now both of the recipes will be the same. If you change data in one, the other changes as well
print(cookieRecipe.ingredients)
print(cookieRecipe2.ingredients)



