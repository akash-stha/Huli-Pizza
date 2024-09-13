//
//  ContentView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-05.
//

import SwiftUI

struct ContentView: View {
    
    var orders: [Int] = [1,2,3,4,5]
    var showOrders: Bool = true
    
    var body: some View {
        ScrollView {
            VStack {
                HeaderView()
                if showOrders {
                    OrderView(orders: orders)
                } else {
                    MenuItemView()
                        .padding(.vertical)
                        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                    MenuView()
                }
                Spacer()
            }
            .padding()
        }
        .ignoresSafeArea()
        .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky")], startPoint: .topLeading, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
}
