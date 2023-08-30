//
//  HomeLoginView.swift
//  MyChat
//
//  Created by Lucas Newlands on 25/08/23.
//

import SwiftUI

struct HomeLoginView: View {
    var body: some View {
        NavigationStack {
            
            VStack(alignment: .center) {
                Spacer()
                HStack {
                    VStack(alignment: .leading){
                        Text("WATSON")
                            .fontWeight(.heavy)
                            .font(.system(size: 50))
                        Text("CHAT")
                            .fontWeight(.heavy)
                            .font(.system(size: 50))
                        
                        Text("Connecting you with the IBM world.")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                        Text("Powered by Watson")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .font(.largeTitle)
                    
                 
                    
                    Spacer()
                }
                .padding()
                
                HStack {
                    Spacer()
                    Image("ibmImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75, height: 75)
                        .cornerRadius(25)
                }
                .padding(.horizontal, 30)
                
                Spacer()
                
                VStack {
                    Button {
                        print("Login with W3ID")
                    } label: {
                        HStack(spacing: 10) {
                            Image("ibmLogo")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .cornerRadius(15)
                            Text("Continue with W3")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            
                        }
                        .frame(width: 360, height: 44)
                        .foregroundColor(.black)
                        .background(Color(.white))
                        .cornerRadius(10)
                        }
                    
                    Button {
                        print("Continue with email")
                    } label: {
                        HStack(spacing: 10) {
                            Image(systemName: "envelope")
                                .frame(width: 25, height: 25)
                                .cornerRadius(15)
                            Text("Continue with email")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            
                        }
                        .frame(width: 360, height: 44)
                        .background(Color(.white))
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        }

                }
                .frame(maxWidth: .infinity, maxHeight: 250)
                .background(Color("ColorBlueIBM"))
                .cornerRadius(28)
                .ignoresSafeArea()

            }
            .frame(width: .infinity, height: .infinity)
            .background(Color(.systemBackground))
            .foregroundColor(Color(.label))
            .ignoresSafeArea()
        }
    }
}



#Preview {
    HomeLoginView()
}
