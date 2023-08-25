//
//  HomeLoginView.swift
//  MyChat
//
//  Created by Lucas Newlands on 25/08/23.
//

import SwiftUI

struct HomeLoginView: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            HStack {
                VStack(alignment: .leading){
                    Text("MY")
                        .fontWeight(.heavy)
                        .font(.system(size: 50))
                    Text("CHAT")
                        .fontWeight(.heavy)
                        .font(.system(size: 50))
                    
                    Text("Connecting you with the world.")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .fontWeight(.bold)
                .font(.largeTitle)
                

                
                Spacer()

            }
            .padding()
            
            Spacer()
            
            VStack(spacing: 15) {
                LoginButtonView(ButtonColor: Color.blue, ButtonTitle:  "Login", ButtonImage: "", ButtonForegroundColor: Color.white, isExternalButton: false)
                
                HStack(alignment: .center) {
                    SeparatorView()
                    Text("or")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    SeparatorView()
                }
                
                LoginButtonView(ButtonColor: Color.black, ButtonForegroundColor: Color.white)
            }
           
            
        }
        .frame(width: .infinity, height: .infinity)
        .background(Color.white.opacity(0.8))
    }
}

#Preview {
    HomeLoginView()
}
