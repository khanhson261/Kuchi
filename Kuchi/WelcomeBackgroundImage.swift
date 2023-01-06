//
//  WelcomeBackgroundImage.swift
//  Kuchi
//
//  Created by Khanh Son on 1/5/23.
//

import SwiftUI

struct WelcomeBackgroundImage: View {
    var body: some View {
        Image("welcome-background",bundle: nil)
            .resizable()
            .aspectRatio(1/1, contentMode: .fit)
            .edgesIgnoringSafeArea(.all)
            .saturation(0.5)
            .blur(radius: 5)
            .opacity(0.08)
    }
}

struct WelcomeBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackgroundImage()
    }
}
