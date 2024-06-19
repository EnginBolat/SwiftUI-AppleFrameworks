//
//  FrameworkButton.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Engin Bolat on 18.06.2024.
//

import SwiftUI

struct FrameworkButton: View {
    
    let title: String
    let backgroundColor: Color
    let foregroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280,height: 50)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .fontWeight(.semibold)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    FrameworkButton(title: "Learn More", backgroundColor: .red, foregroundColor: .white)
}
