//
//  MenuView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-07.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView(showsIndicators: true) {
            ForEach(1...15, id: \.self) { item in
                MenuRowView(item: item)                
            }
        }
    }
}

#Preview {
    MenuView()
}
