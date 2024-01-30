//
//  ContentView.swift
//  Yummi
//
//  Created by Ouahchia, Mohamed (JD) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var ingredientName: String = ""
    @State private var quantity: Int = Int()
    @State private var unit: String = ""
    
    var body: some View {
        let Flour = Ingredients(name: "Flour", quantity: 500, unit: "g", category: "Food", expiryDate: Date(timeIntervalSince1970: 86400 * 365.25 * 100))

            Form {
                Section {
                    Text("Name: \(Flour.name)")
                    Text("Quantity: \(Flour.quantity)\(Flour.unit)")
                    Text("Category: \(Flour.category)")
                    Text("Expiry date: \(Flour.expiryDate.formatted(date: Date.FormatStyle.DateStyle.numeric, time: Date.FormatStyle.TimeStyle.shortened))")
                    
                }
                Section("New") {
                    Text("Make a new ingredient");
                    TextField("Ingredient Name", text: $ingredientName);
                    TextField("Quantity", value: $quantity, formatter: NumberFormatter());
                    TextField("Unit", text: $unit);
                    ("Category", text: $unit);
                }
            }
        
            
        
        .padding()
    }
}

#Preview {
    ContentView()
}
