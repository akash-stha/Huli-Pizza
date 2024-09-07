//
//  ContentView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-05.
//

import SwiftUI

struct ContentView: View {
    
    var orders: [Int] = [1,2,3,4,5]
    
    var body: some View {
        VStack {
            HeaderView()
            OrderView(orders: orders)
            MenuItemView()
            MenuView()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
