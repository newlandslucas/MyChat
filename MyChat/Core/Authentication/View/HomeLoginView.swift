//
//  HomeLoginView.swift
//  MyChat
//
//  Created by Lucas Newlands on 25/08/23.
//

import SwiftUI

struct HomeLoginView: View {
    @State var emailText = ""
    @State var passwordText = ""
    var body: some View {
        NavigationStack {
            
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
                
                VStack(spacing: 0) {
                    VStack {
                        TextField("Enter your email", text: $emailText)
                            .autocapitalization(.none)
                            .modifier(TextFieldModifier())
                            .keyboardType(.emailAddress)
                        
                        SecureField("Enter your password", text: $passwordText)
                            .modifier(TextFieldModifier())
                    }
                  
                    Button {
                        print("Login")
                    } label: {
                        Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        }
                        .padding(.vertical)
                }
                        
                VStack(spacing: 15) {
                    
                    LoginButtonView(ButtonColor: Color.black, ButtonForegroundColor: Color.white)
                    
                    HStack(alignment: .center) {
                        SeparatorView()
                        Text("or")
                            .font(.footnote)
                            .foregroundColor(.gray)
                        SeparatorView()
                    }
                    
                    NavigationLink {
                        RegisterEmailView()
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack {
                            Text("Don't have an account?")
                            
                            Text("Sign up")
                                .fontWeight(.semibold)
                        }
                        .font(.footnote)
                        .foregroundColor(Color(.systemBlue))
                    }
                    .padding(.vertical, 16)
                    
                }
                
                
            }
            .frame(width: .infinity, height: .infinity)
            .background(Color.white.opacity(0.8))
        }
    }
}

#Preview {
    HomeLoginView()
}
