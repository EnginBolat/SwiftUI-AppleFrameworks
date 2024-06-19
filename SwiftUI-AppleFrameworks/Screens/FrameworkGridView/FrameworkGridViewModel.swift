//
//  FrameworkGridViewModel.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Engin Bolat on 18.06.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
        
    @Published var isShowingDetailView = false
    
    let colums: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
}
