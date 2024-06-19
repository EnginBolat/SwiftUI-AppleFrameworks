//
//  XDismissButton.swift
//  SwiftUI-AppleFrameworks
//
//  Created by Engin Bolat on 19.06.2024.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailsView:Bool
    
    var body: some View {
        HStack(content: {
            Spacer()
            Button{
                isShowingDetailsView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .imageScale(.large)
                    .frame(width: 44,height: 44)
            }
        })
    }
}

#Preview {
    XDismissButton(isShowingDetailsView: .constant(false))
}
