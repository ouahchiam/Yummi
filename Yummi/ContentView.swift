//
//  ContentView.swift
//  Yummi
//
//  Created by Ouahchia, Mohamed (JD) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isSideBarOpened = false
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(Recipes, id: \.name) { recipe in
                    NavigationLink("\(recipe.name)") {
                        VStack {
                            Text("\(recipe.name)")
                                .dynamicTypeSize(.xxLarge)
                                .fontWeight(.bold)
                            Text("\(recipe.descriptor)")
                                .dynamicTypeSize(.medium)
                                .fontWeight(.medium)
                                .padding()
                            
                            Form {
                                Section ("Ingredients") {
                                    VStack {
                                        ForEach(recipe.Ingredients,id: \.name) { ingredient in
                                            if (FoodCategories.contains(ingredient.category)) {
                                                VStack(alignment: .leading) {
                                                    Text("\(ingredient.quantity) \(ingredient.unit)")
                                                    Text("Expiry date: \(ingredient.expiryDate.formatted(date: Date.FormatStyle.DateStyle.numeric, time: Date.FormatStyle.TimeStyle.shortened))")
                                                }
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
                            Spacer()
                        }
                        
                    }
                }
                .navigationTitle("Recipes")
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Image(systemName: "person.crop.circle")
                    }
                    
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            isSideBarOpened.toggle()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            // action
                        } label: {
                            Image(systemName: "plus")
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            // action
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                        }
                    }
                    
                    
                    ToolbarItem(placement: .status) {
                        Button {
                            
                        } label: {
                            Text("Create recipe")
                        }
                        .buttonStyle(.borderedProminent)
                        .controlSize(.extraLarge)
                    }
                }
            }
            Sidebar(isSidebarVisible: $isSideBarOpened)
        }
    }
}

#Preview {
    ContentView()
}
