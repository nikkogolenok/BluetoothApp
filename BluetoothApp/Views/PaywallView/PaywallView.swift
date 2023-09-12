//
//  PaywallView.swift
//  BluetoothApp
//
//  Created by Никита Коголенок on 11.09.23.
//

import SwiftUI

struct PaywallView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Button {
                dismiss()
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 24, height: 24)
                    .foregroundColor(.black)
                    .padding(.top, 30)
                    .padding(.leading, 335)
                    .padding(.bottom, 16)
            }

            Text("Get PRO version")
                .font(.custom("Rubik-Bold", size: 22))
            
            Text("Upgrade to PRO version to get all these great benefits:")
                .font(.custom("Rubik-Regular", size: 15))
                .foregroundColor(FontStyleColors.colorMedium)
                .padding(.bottom, 40)
                .padding(.leading, 54)
                .multilineTextAlignment(.center)
            
            VStack(alignment: .leading, spacing: 9) {
                
                HStack {
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(FontStyleColors.colorBlue)
                    Text("Network scanner")
                }
                HStack {
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(FontStyleColors.colorBlue)
                    Text("Infrared camera")
                }
                HStack {
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(FontStyleColors.colorBlue)
                    Text("Instructions")
                }
                HStack {
                    Image(systemName: "checkmark.circle")
                        .foregroundColor(FontStyleColors.colorBlue)
                    Text("Bluetooth scanner")
                }
            }
            .padding(.bottom, 50)
            
            VStack(spacing: 6) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .border(FontStyleColors.colorMedium, width: 1)
                        .frame(width: 327, height: 56)
                        .cornerRadius(10)
                    HStack() {
                        Circle()
                            .frame(width: 6, height: 6)
                            .foregroundColor(FontStyleColors.colorMedium)
                        HStack(spacing: 140) {
                            Text("Weekly")
                            Text("3,6$ / week")
                        }
                    }
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .border(FontStyleColors.colorMedium, width: 1)
                        .frame(width: 327, height: 56)
                        .cornerRadius(10)
                    HStack {
                        Circle()
                            .frame(width: 6, height: 6)
                            .foregroundColor(FontStyleColors.colorMedium)
                        HStack(spacing: 119) {
                            Text("Monthly")
                            Text("7,05$ / month")
                        }
                    }
                }
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                        .border(FontStyleColors.colorMedium, width: 1)
                        .frame(width: 327, height: 56)
                        .cornerRadius(10)
                    HStack {
                        Circle()
                            .frame(width: 6, height: 6)
                            .foregroundColor(FontStyleColors.colorMedium)
                        HStack(spacing: 25) {
                            Text("Permanently")
                            Text("12,00$ / permanently")
                        }
                    }
                }
                    
            }
            .padding(.bottom, 70)
            
            NavigationLink("NEXT") {
                MainView()
            }
            .frame(width: 343, height: 56)
            .background(FontStyleColors.colorBlue)
            .foregroundColor(Color.white)
            .cornerRadius(16)
            .padding(.bottom, 20)
            
            Button("Restore purchases") {
                
            }
            .font(.custom("Rubik-Regular", size: 15))
            .foregroundColor(.black)
            
            
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        
    }
    
    private func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}

struct PaywallView_Previews: PreviewProvider {
    static var previews: some View {
        PaywallView()
    }
}
