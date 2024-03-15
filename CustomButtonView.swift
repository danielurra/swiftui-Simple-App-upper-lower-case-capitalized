//
//  CustomButtonView.swift
//  capitalizationapp
//
//  Created by Eusebio Taba on 3/11/24.
//

import SwiftUI

struct CustomButtonView: View {
    
    var titleDanny: String
    var bkgndColorDanny: Color
    
    var body: some View {
        Text(titleDanny)
            .font(.body)
            .bold()
            .padding(10)
            .frame(maxWidth: .infinity)
            .background(bkgndColorDanny)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    CustomButtonView(titleDanny: "Tap Me", bkgndColorDanny: .blue)
}

