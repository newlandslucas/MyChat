//
//  HomeView.swift
//  MyChat
//
//  Created by Lucas Newlands on 25/08/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            //MARK: Header
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Text("Hello,")
                        .font(.title)
                    Text("Lucas Newlands")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                Button {
                } label: {
                    Image("profilePhoto")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .cornerRadius(25)
                }

            }
            .padding()
            
            //MARK: ScrollView your contacts
            
            VStack{
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center, spacing: 15) {
                        RoundedButtonsView()
                        UserButtonRounded()
                        UserButtonRounded()
                        UserButtonRounded()
                        UserButtonRounded()
                        UserButtonRounded()

                    }
                }
                .padding()
            }
            
            Divider()
            
            //MARK: Open chats
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Recent messagges")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding()
                
                VStack(spacing: 5) {
                    ScrollView(showsIndicators: false) {
                        CellChatView(imageName: "profilePhoto", userName: "Lucas Newlands", textMessage: "Test message...", timeMessage: "00:20", notificationCount:  "10")
                        CellChatView(imageName: "profilePhoto", userName: "Lucas Newlands", textMessage: "Test message...", timeMessage: "00:20", notificationCount:  "1")
                        CellChatView(imageName: "profilePhoto", userName: "Lucas Newlands", textMessage: "Test message...", timeMessage: "00:20", notificationCount:  "3")
                        CellChatView(imageName: "profilePhoto", userName: "Lucas Newlands", textMessage: "Test message...", timeMessage: "00:20", notificationCount:  "4")
                    }
                    
                }
                
            }
         
            Spacer()
        }
        .background(Color(.systemBackground))
        .foregroundColor(Color(.label))
    }
    
}

#Preview {
    HomeView()
}
