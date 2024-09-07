//
//  OrderRowView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-07.
//

import SwiftUI

struct OrderRowView: View {
    
    var order: Int
    
    var body: some View {
        HStack {
            Text("Your Order Item \(order)")
            Spacer()
            Text(19.90, format: .currency(code: "CAD"))
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
