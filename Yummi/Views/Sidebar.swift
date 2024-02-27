//
//  Sidebar.swift
//  Yummi
//
//  Created by Ouahchia, Mohamed (JD) on 02/02/2024.
//

import SwiftUI

struct Sidebar: View {
    @Binding var isSidebarVisible: Bool
    var sideBarWidth = UIScreen.main.bounds.size.width * 0.7
        var bgColor: Color =
    Color(.white)

        var body: some View {
            ZStack {
                GeometryReader { _ in
                    EmptyView()
                }
                .background(.black.opacity(0.6))
                .opacity(isSidebarVisible ? 1 : 0)
                .animation(.easeInOut.delay(0.2), value: isSidebarVisible)
                .onTapGesture {
                    isSidebarVisible.toggle()
                }
                content
            }
            .edgesIgnoringSafeArea(.all)
        }

        var content: some View {
            HStack(alignment: .top) {
                ZStack(alignment: .center) {
                    bgColor
                    VStack {
                        Button {
                            
                        } label: {
                            Text("Recipe")
                        }
                            .padding()
                        Button("Ingredients", action: {})
                            .padding()
                    }
                }
                .frame(width: sideBarWidth)
                .offset(x: isSidebarVisible ? 0 : -sideBarWidth)
                .animation(.default, value: isSidebarVisible)

                Spacer()
            }
        }
}

#Preview {
    ContentView()
}



