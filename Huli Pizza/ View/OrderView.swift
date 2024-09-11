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
                Text(orders.isEmpty ? 00.00 : 100.99, format: .currency(code: "CAD"))
            } icon: {
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            
            
            HStack {
                Text("Order Pizza")
                    .padding(.horizontal, 15)
                    .font(.title)
                Spacer()
            }
            ScrollView{
                ForEach(orders, id: \.self) { order in
                   OrderRowView(order: order)
                        .padding(.horizontal, 15)
                        .padding(.bottom, 5)
                }
            }
        }
        .padding()
        .background(Color("Surf"))
    }
}


#Preview {
    OrderView(orders: [1,2,3,4,5])
}
