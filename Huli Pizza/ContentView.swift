//
//  ContentView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-05.
//

import SwiftUI

struct ContentView: View {
    
    var orders: [Int] = [1,2,3,4,5]
    var showOrders: Bool = false
    
    var body: some View {
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
        .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
}
