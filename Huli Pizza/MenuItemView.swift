//
//  MenuItemView.swift
//  Huli Pizza
//
//  Created by Akash Shrestha on 2024-09-07.
//

import SwiftUI

struct MenuItemView: View {
    
    @State private var isExpanded: Bool = false // State to track if text is expanded
    
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg") {
                Image(uiImage: image)
                    .cornerRadius(10)
            } else {
                Image("surfboard_sm")
            }
            VStack(alignment: .leading) {
                Text("Margherita")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("Surf"))
                    .padding(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.3)], startPoint: .trailing, endPoint: .leading), in: Capsule())
                
                // Collapsible view with arrow on the trailing side of the text
                 HStack {
                     Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dignissim egestas imperdiet. Maecenas at neque eget augue sollicitudin bibendum. Quisque convallis ante eget dui lacinia, id ultricies lectus porttitor. Sed vel rutrum elit, sed vehicula libero. In hac habitasse platea dictumst. Suspendisse quis malesuada dolor. Suspendisse potenti. Mauris tincidunt libero.")
                         .font(.custom("Georgia", size: 14, relativeTo: .body))
                         .lineLimit(isExpanded ? nil : 2) // Conditionally limit text lines
                         .fixedSize(horizontal: false, vertical: true)

                     Spacer() // Push the arrow to the trailing side
                     
                     Image(systemName: "chevron.down")
                         .resizable()
                         .frame(width: 12, height: 7)
                         .foregroundColor(.blue)
                         .rotationEffect(.degrees(isExpanded ? -180 : 0)) // Rotate based on the state
                         .animation(.easeInOut(duration: 0.3), value: isExpanded) // Add smooth animation
                 }
                 .onTapGesture {
                     withAnimation(.default) {
                         isExpanded.toggle() // Toggle expanded state
                     }
                 }
                 .padding(.vertical, -5)
            }
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    MenuItemView()
}


/*
 Tap action with Button
 Button(action: {
     withAnimation {
         isExpanded.toggle() // Toggle expanded state
     }
 }) {
     Image(systemName: isExpanded ? "chevron.up" : "chevron.down") // Change arrow based on state
         .foregroundColor(.blue)
 }
 
 Image upward and downward
 Image(systemName: isExpanded ? "chevron.up" : "chevron.down") // Change arrow based on state
     .foregroundColor(.blue)
 */
