//
//  ContentView.swift
//  Yummi
//
//  Created by Ouahchia, Mohamed (JD) on 23/01/2024.
//

import SwiftUI

struct IngredientView: View {
    @State private var ingredientName: String = ""
    @State private var quantity: Int = Int()
    @State private var unit: String = ""
    @State private var expiryDate = Date()
    @State private var category: Category = Category.carbohydrate
    @State private var currentIngredientCount = 0 {
        didSet {
            if currentIngredientCount > IngredientsArray.count-1 {
                currentIngredientCount = 0
            }
        }
    }

    
    var body: some View {
        @State var currentIngredient = IngredientsArray[currentIngredientCount]

            Form {
                Section("Information") {
                    Text("Name: \(currentIngredient.name)")
                    Text("Quantity: \(currentIngredient.quantity) \(currentIngredient.unit)")
                    Text("Category: \(currentIngredient.category.rawValue.capitalized)")
                    Text("Expiry date: \(currentIngredient.expiryDate!.formatted(date: Date.FormatStyle.DateStyle.numeric, time: Date.FormatStyle.TimeStyle.shortened))")
                    Button("Next ingredient", action: {
                        currentIngredientCount += 1
                    })
                    
                }
                Section("New Ingredient") {
                    TextField("Ingredient Name", text: $ingredientName);
                    HStack {
                        TextField("Quantity", value: $quantity, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                        TextField("Unit", text: $unit);
                    }
                    HStack {
                        Text("Category")
                        List {
                            Picker("", selection: $category) {
                                ForEach(Category.allCases, id: \.self) { category in
                                    Text(category.rawValue.capitalized)
                                }
                            }
                        }
                    }
                    DatePicker("Expiry date", selection: $expiryDate);
                    Button(action: {
                        IngredientsArray.append(Ingredient(name: ingredientName, quantity: quantity, unit: unit, category: category, expiryDate: expiryDate))
                    }) {
                        Label("Make Ingredient", systemImage: "plus.square.on.square")
                    }
                }
            }
            
        .padding()
    }
    
}


#Preview {
    IngredientView()
}
