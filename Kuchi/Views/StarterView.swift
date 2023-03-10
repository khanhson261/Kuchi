//
//  StarterView.swift
//  Kuchi
//
//  Created by Khanh Son on 1/5/23.
//

import SwiftUI

struct StarterView: View {
  @EnvironmentObject var userViewModel: UserManager
  
  @ViewBuilder
  var body: some View {
    if userViewModel.isRegistered {
      WelcomeView()
    } else {
      RegisterView()
    }
  }
}

struct StarterView_Previews: PreviewProvider {
  static var previews: some View {
    StarterView()
      .environmentObject(UserManager())
  }
}
