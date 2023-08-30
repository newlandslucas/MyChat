//
//  MainView.swift
//  MyChat
//
//  Created by Lucas Newlands on 29/08/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    MainView()
}
