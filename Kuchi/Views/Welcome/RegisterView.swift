//
//  RegisterView.swift
//  Kuchi
//
//  Created by Khanh Son on 1/5/23.
//

import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    @State var password: String = ""
    @FocusState var nameFieldFocused: Bool
    @EnvironmentObject var userManager: UserManager
    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            VStack(alignment: .center) {
              Spacer()
              WelcomeMessageView()
                KCTextField(placeholder: "Enter your name", value: $userManager.profile.name)
                    .focused($nameFieldFocused)
                    .submitLabel(.done)
                    .onSubmit {
                        registerUser()
                    }
                    .padding()
                HStack() {
                    Spacer()
                  Toggle(isOn: $userManager.settings.rememberUser) {
                    Text("Remember me")
                      .font(.subheadline)
                      .foregroundColor(.gray)
                  }
                    .fixedSize()
                }
                Button(action: self.registerUser) {
                HStack {
                    Image(systemName: "checkmark")
                      .resizable()
                      .frame(width: 16, height: 16, alignment: .center)
                    Text("OK")
                      .font(.body)
                .bold() }
                }
                .disabled(!userManager.isUserNameValid())
                .bordered()
              Spacer()
            }
            .padding()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static let user = UserManager(name: "Ray")
     static var previews: some View {
       RegisterView()
         .environmentObject(UserManager())
     }
}

extension RegisterView {
    func registerUser() {
        nameFieldFocused = false
        if userManager.settings.rememberUser {
            userManager.persistProfile()
          } else {
            userManager.clear()
            }
            userManager.persistSettings()
            userManager.setRegistered()
    }
}
