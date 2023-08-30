//
//  CellChatView.swift
//  MyChat
//
//  Created by Lucas Newlands on 29/08/23.
//

import SwiftUI

struct CellChatView: View {
    let imageName: String
    let userName: String
    let textMessage: String
    let timeMessage: String
    let notificationCount: String
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center) {
                //MARK: User Photo
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(30)
                
                //MARK: Name and Text message preview
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(userName)
                        .fontWeight(.bold)
                    
                    Text(textMessage)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                }
                .padding(.horizontal, 20)
                Spacer()
                
                //MARK: Time and Notification count
                VStack(spacing: 5) {
                    Text(timeMessage)
                        .foregroundColor(.gray)
                        .font(.footnote)

                    VStack {
                        Text(notificationCount)
                            .foregroundColor(.white)
                    }
                    .frame(width: 22, height: 22)
                    .background(Color.blue)
                    .cornerRadius(20)
                    .padding(.horizontal, 20)
                }
            }
        }
        .padding()


    }
}

#Preview {
    CellChatView(imageName: "profilePhoto", userName: "Lucas Newlands", textMessage: "Test message...", timeMessage: "00:20", notificationCount:  "10")
}
