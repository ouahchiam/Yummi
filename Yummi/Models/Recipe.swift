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
    let Ingredients: [Ingredient]
}

var Recipes: [Recipe] = [Recipe(name: "Delicious Chicken", descriptor: "Who doesn't love chicken?", Ingredients: [
    Ingredient(name: "Chicken", quantity: 1, unit: "Whole Chicken", category: .protein, expiryDate: Date(timeIntervalSince1970: 2985874355435))
])]
