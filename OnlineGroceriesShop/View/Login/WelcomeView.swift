//
//  WelcomeView.swift
//  OnlineGroceriesShop
//
//  Created by macstore.uz on 20/11/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth,height: .screenHeight)
            
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60,height: 60)
                    .padding(.bottom,8)
                
                Text("Welcome nto our store")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Ger your groceries in as fast as one hour")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom,20)
                
                NavigationLink{
                    SignInView()
                } label: {
                    RoundedButton(title: "Get Started"){}
                }
                
                
                Spacer()
                    .frame(height: 80)
                
                
            }
            .padding(.horizontal,20)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationStack{
        WelcomeView()
    }
    
}
