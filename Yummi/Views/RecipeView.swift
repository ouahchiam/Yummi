//
//  RecipeListView.swift
//  Yummi
//
//  Created by Ouahchia, Mohamed (JD) on 05/03/2024.
//

import SwiftUI

struct RecipeView: View {
    let recipe: Recipe
    
    var body: some View {
        VStack {
            Form {
                Section(recipe.descriptor) {
                    AsyncImage(url: URL(string: recipe.image)) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit) // or .fill
                    } placeholder: {
                        ProgressView()
                    }
                }
                Section ("Ingredients") {
                    VStack {
                        ForEach(recipe.Ingredients, id: \.name) { ingredient in
                            if (FoodCategories.contains(ingredient.category)) {
                                VStack(alignment: .leading) {
                                    Text("\(ingredient.name)")
                                    Text("\(ingredient.quantity) \(ingredient.unit)")
                                    if (!ingredient.isInventory) {
                                        if let date = ingredient.expiryDate {
                                            Text("Expiry date: \(date.formatted(date: Date.FormatStyle.DateStyle.numeric, time: Date.FormatStyle.TimeStyle.shortened))")
                                        }
                                    }
                                }
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                            }
                        }
                        
                    }
                }
                Section ("Instructions") {
                    VStack(alignment: .leading) {
                        ForEach(0..<recipe.Instructions.count, id: \.self) { index in
                            Text("\(index+1). \(recipe.Instructions[index])")
                        }
                    }
                }
            }
            .navigationTitle(recipe.name)
        }
    }
}

#Preview {
    RecipeView(recipe: Recipes[0])
}
