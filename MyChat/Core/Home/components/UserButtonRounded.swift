//
//  UserButtonRounded.swift
//  MyChat
//
//  Created by Lucas Newlands on 25/08/23.
//

import SwiftUI

struct UserButtonRounded: View {
    var profilePhoto: String = "person.crop.circle"
    var profileName: String = "Lucas"
    var profileSurname: String = "Newlands"
    var body: some View {
        
        Button {
            print("clicou!")
        } label: {
            VStack(alignment: .center, spacing: 10) {
                VStack {
                    Image(systemName: profilePhoto)
                        .font(.system(size: 20))
                }
                .frame(width: 60, height: 60)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(35)
                
                VStack {
                    Text(profileName)
                        .font(.system(size: 12))
                    Text(profileSurname)
                        .font(.system(size: 12))
                }
            }
        }
        .foregroundColor(Color(.label))
    }
}

#Preview {
    UserButtonRounded()
}
