//
//  ContentView.swift
//  BluetoothApp
//
//  Created by Никита Коголенок on 11.09.23.
//

import SwiftUI


struct OnboardingView: View {
    
    // MARK: - Variables
    @State var isLogin: Bool = false
    @State private var currentIndex = 0
    private let screens: [OnboardView] = [
        OnboardView(imageName: "scanImage",
                    title: "Scan the network",
                    description: "Scan the network to see all suspicious connections"),
        
        OnboardView(imageName: "cameraImage",
                    title: "Use the camera",
                    description: "Use your phone camera to find hidden devices"),
        
        OnboardView(imageName: "findImage",
                    title: "Find devices",
                    description: "Read helpful instructions on how to find spy devices")
    ]
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                TabView(selection: $currentIndex.animation()) {
                    ForEach(0..<screens.count, id: \.self) { index in
                        screens[index]
                            .id(index)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(.page(backgroundDisplayMode: .never))
                .overlay(Fancy3DotsIndexView(numberOfPages: screens.count, currentIndex: currentIndex))
                
                ZStack {
                    NavigationLink("NEXT") {
                        PaywallView()
                    }
                }
                .frame(width: 343, height: 56)
                .background(FontStyleColors.colorBlue)
                .foregroundColor(Color.white)
                .cornerRadius(16)
                
            }
            .offset(y: -30)
            
            
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
