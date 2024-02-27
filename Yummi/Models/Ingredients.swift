//
//  Ingredients.swift
//  Yummi
//
//  Created by Ouahchia, Mohamed (JD) on 23/01/2024.
//

import Foundation

struct Ingredient {
    let name: String
    let quantity: Int
    let unit: String
    let category: Category
    let isInventory: Bool = false
    let expiryDate: Date?
}

var IngredientsArray = [Ingredient(name: "Flour", quantity: 500, unit: "g", category: Category.carbohydrate, expiryDate: Date(timeIntervalSince1970: 86400 * 365.25 * 100))]
