//
//  RoundedButton.swift
//  OnlineGroceriesShop
//
//  Created by macstore.uz on 20/11/24.
//

import SwiftUI

struct RoundedButton: View {
    
    @State var title:String = "Title"
    var didTap:(()->())?
    
    var body: some View {
        Button{
            didTap?()
        } label: {
            Text(title)
                .font(.customfont(.semibold, fontSize:18))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .frame(minWidth: 0,maxWidth: .infinity,minHeight: 60,maxHeight: 60)
                .background(Color.primaryApp)
                .cornerRadius(20)
        }
    }
}

#Preview {
    RoundedButton().padding(20)
}
