//
//  FrameworkGridView.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Engin Bolat on 18.06.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
        
    var body: some View {
        NavigationView(content: {
            ScrollView(content: {
                LazyVGrid(columns: viewModel.colums, content: {
                    ForEach(MockData.frameworks, content: { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    })
                    
                }).navigationTitle("Apple Frameworks")
                    .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                        FrameworkDetailView(framework: viewModel.selectedFramework!,
                                            isShowingDetailsView: $viewModel.isShowingDetailView)
                    })
            })
        })
    }
}

#Preview {
    FrameworkGridView()
}


