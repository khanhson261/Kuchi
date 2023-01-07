//
//  KCTextField.swift
//  Kuchi
//
//  Created by Khanh Son on 1/7/23.
//

import SwiftUI

struct KCTextField: View {
    var placeholder: String
    @Binding var value: String
    var body: some View {
        TextField(placeholder, text: $value)
            .submitLabel(.done)
            .bordered()
    }
}


struct KCTextField_Previews: PreviewProvider {
    static var previews: some View {
        KCTextField(placeholder: "Enter your name", value: .constant("name"))
    }
}
