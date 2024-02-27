//
//  Recipe.swift
//  Yummi
//
//  Created by Ouahchia, Mohamed (JD) on 30/01/2024.
//

import Foundation

struct Recipe {
    let name: String
    let descriptor: String
    let image: String
    let Ingredients: [Ingredient]
    let Instructions: [String]
    var isFavourite: Bool = false
}

#if DEBUG
var Recipes: [Recipe] = [Recipe(name: "Delicious Chicken", descriptor: "Who doesn't love chicken?", image: "https://images.pexels.com/photos/2673353/pexels-photo-2673353.jpeg", Ingredients: [
        Ingredient(name: "Chicken", quantity: 1, unit: "Whole Chicken", category: .protein, expiryDate: Date(timeIntervalSince1970: 365.25 * 86400 * 54)),
        Ingredient(name: "Garlic", quantity: 500, unit: "g chopped", category: .protein, expiryDate: Date(timeIntervalSince1970: 365.25 * 86400 * 34)),
    Ingredient(name: "Red Cabbage", quantity: 500, unit: "g chopped", category: .vegetables, expiryDate: Date(timeIntervalSince1970: 365.25 * 86400 * 34)),
    ], Instructions: ["Stuff the chicken with the seasonings.", "Cook the chicken."]
)]
#endif
