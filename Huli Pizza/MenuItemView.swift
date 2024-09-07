//
//  MenuItemView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-07.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg") {
                Image(uiImage: image)
            } else {
                Image("surfboard_sm")
            }
            Text("Margherita")
            Text("Description")
                .font(.system(size: 12))
        }
    }
}

#Preview {
    MenuItemView()
}
