//
//  OrderView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-07.
//

import SwiftUI

struct OrderView: View {
    var orders: [Int]

    var body: some View {
        VStack {            
            Label {
                Text(100.99, format: .currency(code: "CAD"))
            } icon: {
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            
            
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView{
                ForEach(orders, id: \.self) { order in
                   OrderRowView(order: order)
                }
            }
        }
    }
}


#Preview {
    OrderView(orders: [1,2,3,4,5])
}
