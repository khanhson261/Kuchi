//
//  HorizontallyAlignedLabelStyle.swift
//  Kuchi
//
//  Created by Khanh Son on 1/5/23.
//

import Foundation
import SwiftUI

struct HorizontallyAlignedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
            
        }
    }
  }
