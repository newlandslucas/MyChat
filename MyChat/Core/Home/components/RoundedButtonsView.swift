//
//  RoundedButtonsView.swift
//  MyChat
//
//  Created by Lucas Newlands on 25/08/23.
//

import SwiftUI

struct RoundedButtonsView: View {
    var imageName: String = "magnifyingglass"
    var textIcon: String = "Search"
    var body: some View {
        
        Button {
            print("clicou!")
        } label: {
            VStack(alignment: .center, spacing: 10) {
                VStack {
                    Image(systemName: imageName)
                        .font(.system(size: 20))
                }
                .frame(width: 60, height: 60)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(35)
                
                VStack {
                    Text(textIcon)
                        .font(.footnote)
                    Text("")
                }
              
            }
        }
        .foregroundColor(Color(.label))

    }
}

#Preview {
    RoundedButtonsView()
}
