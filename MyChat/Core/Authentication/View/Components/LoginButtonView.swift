//
//  LoginButtonView.swift
//  FindMyCar
//
//  Created by Lucas Newlands on 22/08/23.
//

import SwiftUI

struct LoginButtonView: View {
    
    var ButtonColor: Color = Color.white
    var ButtonTitle: String = "Continue with Apple"
    var ButtonImage: String = "apple.logo"
    var ButtonForegroundColor: Color = Color.black
    
    var isExternalButton: Bool = false
    
    var body: some View {
        
        Button {
            print("Login with Apple")
        } label: {
            HStack {
                if isExternalButton == false {
                    Image(systemName: ButtonImage)
                        .font(.system(size: 20))
                } else {
                    Image(ButtonImage)
                        .resizable()
                        .frame(width: 25, height: 25)
                }
                Spacer()
                Text(ButtonTitle)
                    .fontWeight(.bold)
                Spacer()
                
            }
            .padding()
            .frame(width: 360, height: 44)
            .background(ButtonColor)
            .foregroundColor(ButtonForegroundColor)
            .cornerRadius(15)
        }

       
    }
}

struct LoginButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoginButtonView()
    }
}
