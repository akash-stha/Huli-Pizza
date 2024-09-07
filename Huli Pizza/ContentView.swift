//
//  ContentView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        var orders: [Int] = [1,2,3,4,5]
        
        VStack {
            ZStack {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                Text("Huli Pizza Company")
                    .background(.white)
            }
            
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
                    HStack {
                        Text("Your Order Item \(order)")
                        Spacer()
                        Text(19.90, format: .currency(code: "CAD"))
                    }
                }
            }
            ScrollView(showsIndicators: true) {
                ForEach(1...15, id: \.self) { item in
                    HStack(alignment: .top, spacing: 15) {
                        if let image = UIImage(named: "\(item)_sm") {
                            Image(uiImage: image)
                        } else {
                            Image("surfboard_sm")
                        }
                        VStack(alignment: .leading) {
                            Text("Margherita")
                            Text("Description")
                                .font(.system(size: 14))
                        }
                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
