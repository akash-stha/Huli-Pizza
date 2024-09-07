//
//  MenuRowView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-07.
//

import SwiftUI

struct MenuRowView: View {
    
    var item: Int
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            if let image = UIImage(named: "\(item)_sm") {
                Image(uiImage: image)
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                RatingsView(rating: 5)
            }
        }
    }
}

#Preview {
    MenuRowView(item: 1)
}
