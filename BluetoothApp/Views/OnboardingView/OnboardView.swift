//
//  OnboardView.swift
//  BluetoothApp
//
//  Created by Никита Коголенок on 11.09.23.
//

import SwiftUI

struct OnboardView: View {
    
    // MARK: - Variables
    @State private var navigate = false
    
    let imageName: String
    let title: String
    let description: String
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            Image(imageName)
                .frame(width: 218, height: 218)
                .padding(.init(top: 184, leading: 78, bottom: 98, trailing: 78))
                .ignoresSafeArea()
            Spacer()
            Text(title)
                .font(.custom("Rubik-Bold", size: 22))
                .padding(.init(top: 0, leading: 17, bottom: 11, trailing: 0))
            
            Text(description)
                .font(.custom("Rubik-Regular", size: 15))
                .foregroundColor(FontStyleColors.colorMedium)
                .opacity(0.8)
            Spacer()
        }
        .offset(y: -50)
    }
}
