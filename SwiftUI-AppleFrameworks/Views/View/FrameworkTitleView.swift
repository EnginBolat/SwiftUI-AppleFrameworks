//
//  FrameworkTitleView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Engin Bolat on 19.06.2024.
//

import SwiftUI

struct FrameworkTitleView : View {
    
    let framework: Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
                .symbolRenderingMode(.multicolor)
            
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }.padding()
    }
}


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}

