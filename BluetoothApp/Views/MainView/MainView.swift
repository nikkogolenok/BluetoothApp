//
//  MainView.swift
//  BluetoothApp
//
//  Created by Никита Коголенок on 12.09.23.
//

import SwiftUI

struct MainView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var onOffBluetooth = true
    
    var body: some View {
        ZStack {
            VStack {
                HStack(spacing: 80) {
                    ZStack {
                        Rectangle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(FontStyleColors.colorBlue)
                            .cornerRadius(5)
                        Text(Image(systemName: "clock.arrow.circlepath"))
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 90, height: 40)
                            .foregroundColor(Color(UIColor.lightGray))
                            .cornerRadius(20)
                            .overlay (
                                Circle()
                                    .foregroundColor(.white)
                                    .padding(.all, 3)
                                    .overlay (
                                        Image("logo.bluetooth")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 25, height: 25, alignment: .center)
                                    )
                                    .offset(x: 25, y: 0)
                            )

                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(FontStyleColors.colorBlue)
                            .cornerRadius(5)
                        Text(Image(systemName: "gearshape"))
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                    }
                }
                .padding(.bottom, 150)
                
                Image("bluethoothImage")
                Text("Please access Bluetooth")
                    .font(.custom("Rubik-Regular", size: 15))
                    .foregroundColor(FontStyleColors.colorMedium)
                    .padding(.bottom, 150)
                    
                Button("ALLOW") {
                    
                }
                .frame(width: 343, height: 56)
                .background(FontStyleColors.colorBlue)
                .foregroundColor(.white)
                .cornerRadius(16)
                .padding(.bottom, 30)
                
                
                ZStack {
                    VStack {
//                        Rectangle()
//                            .frame(width: 375, height: 212)
                        Text("Devices: 0")
                            .font(.custom("Rubik-Bold", size: 22))
                            .padding(.bottom, 90)
                        
                        HStack(spacing: 60) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.blue.opacity(0.2))
                                    .cornerRadius(30)
                                Text(Image(systemName: "camera"))
                                    .foregroundColor(FontStyleColors.colorBlue)
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                            }
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: 80, height: 80)
                                    .foregroundColor(FontStyleColors.colorBlue)
                                    .cornerRadius(40)
                                Image(systemName: "antenna.radiowaves.left.and.right")
                                    .foregroundColor(.white)
                                    .font(.system(size: 40))
                                    
                            }
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.blue.opacity(0.2))
                                    .cornerRadius(30)
                                Text(Image(systemName: "book"))
                                    .foregroundColor(FontStyleColors.colorBlue)
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                            }

                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
