//
//  CreateUsernameView.swift
//  MyChat
//
//  Created by Lucas Newlands on 25/08/23.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var usernameText: String = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack(spacing: 12) {
                Text("Create your Username")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("You'll use this email to sign in to your account")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
                TextField("Username", text: $usernameText)
                    .autocapitalization(.none)
                    .modifier(TextFieldModifier())
                
                NavigationLink {
//                    CreatePasswordView()
//                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.vertical)
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
            .background(Color(.systemBackground))
            .foregroundColor(Color(.label))
        }
    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}
