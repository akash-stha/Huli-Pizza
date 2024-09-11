//
//  HeaderView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-07.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("Huli Pizza Company")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .font(.custom("Georgia", size: 30, relativeTo: .title))
                .foregroundStyle(Color("Surf"))
                .padding(.horizontal, 8)
                .background(.linearGradient(colors: [Color("Sky"), .white.opacity(0.1)], startPoint: .trailing, endPoint: .leading))
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame(height: 150)
    }

}

#Preview {
    HeaderView()
}
