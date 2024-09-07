//
//  RatingsView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-07.
//

import SwiftUI

struct RatingsView: View {
    var rating: Int
    var body: some View {
        HStack {
            ForEach(1...6, id: \.self) { circle in
                Image(systemName: (circle <= rating) ? "fork.knife.circle.fill" : "circle")
            }
        }
    }
}

#Preview {
    RatingsView(rating: 5)
}
