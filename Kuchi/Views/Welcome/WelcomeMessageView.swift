//
//  LogoImage.swift
//  Kuchi
//
//  Created by Khanh Son on 1/5/23.
//

import SwiftUI

struct WelcomeMessageView: View {
    var body: some View {
        Label {
            VStack(alignment: .leading) {
                Text("Welcome to")
                    .font(.headline)
                    .bold()
                Text("Kuchi")
                    .font(.largeTitle)
                    .bold()
            }
            .foregroundColor(.red)
            .lineLimit(1)
            .padding(.horizontal)
            .labelStyle(HorizontallyAlignedLabelStyle())
        }
    icon: {
        Image(systemName: "table")
            .resizable()
            .frame(width: 35,height: 35)
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            .background(Color(white: 0.9))
            .clipShape(Circle())
            .foregroundColor(.red)
    }
    .labelStyle(HorizontallyAlignedLabelStyle())
    }
}


struct WelcomeMessage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeMessageView()
    }
}
