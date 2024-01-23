//
//  ContentView.swift
//  Yummi
//
//  Created by Ouahchia, Mohamed (JD) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let Flour = Ingredients(name: "Flour", quantity: 500, unit: "g", category: "Food", expiryDate: Date(timeIntervalSince1970: 86400 * 365.25 * 100))
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Name: \(Flour.name)")
                  .padding()
            Text("Quantity: \(Flour.quantity)\(Flour.unit)")
                .padding()
            Text("Category: \(Flour.category)")
                .padding()
            Text("Expiry date: \(Flour.expiryDate.formatted(date: Date.FormatStyle.DateStyle.numeric, time: Date.FormatStyle.TimeStyle.omitted))")
                .padding()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
