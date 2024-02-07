//
//  Enums.swift
//  Yummi
//
//  Created by Ouahchia, Mohamed (JD) on 23/01/2024.
//

import Foundation

let FoodCategories: [Category] = [.carbohydrate, .protein, .vegetables, .fruits, .grains]

enum Category: String, CaseIterable {
    case equipment, carbohydrate, protein, liquid, vegetables, fruits, grains
}
