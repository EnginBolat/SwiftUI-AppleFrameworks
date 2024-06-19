//
//  FrameworkDetailView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Engin Bolat on 18.06.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let framework : Framework
    @Binding var isShowingDetailsView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            XDismissButton(isShowingDetailsView: $isShowingDetailsView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
            
            Spacer()
            Button(action: {
                isShowingSafariView = true
            }, label: {
                FrameworkButton(title: "Learn More", backgroundColor: .red, foregroundColor: .white)
            })
        }.padding(20)
            .fullScreenCover(isPresented: $isShowingSafariView, content: {
                SafariView(url: URL(string: framework.urlString)!)
            })
    }}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,isShowingDetailsView:.constant(false))
}
