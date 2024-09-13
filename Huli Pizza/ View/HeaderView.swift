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
                .foregroundStyle(.thickMaterial)
                .padding(.horizontal, 8)
                .background(.linearGradient(colors: [Color("Sky").opacity(0.7), Color("Sky").opacity(0.3)], startPoint: .trailing, endPoint: .leading))
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame(height: 150)
        .padding(.top, 50)
    }

}

#Preview {
    HeaderView()
}
