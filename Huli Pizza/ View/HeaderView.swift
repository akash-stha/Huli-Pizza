//
//  HeaderView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-07.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Huli Pizza Company")
                .background(.white)
        }
    }
}

#Preview {
    HeaderView()
}
