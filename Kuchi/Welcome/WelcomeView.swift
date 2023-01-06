//
//  WelcomeView.swift
//  Kuchi
//
//  Created by Khanh Son on 1/5/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            WelcomeBackgroundImage()
            WelcomeMessageView()
        }
    }
    
    struct WelcomeView_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeView()
        }
    }
}

