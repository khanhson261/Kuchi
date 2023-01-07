//
//  History.swift
//  Kuchi
//
//  Created by Khanh Son on 1/7/23.
//

import Foundation
import SwiftUI

struct History: Hashable {
  let date: Date
  let challenge: Challenge
  
  static func random() -> History {
    let date = Date.init(timeIntervalSinceNow: -TimeInterval.random(in: 0...1000000))
    
    let challenge = ChallengesViewModel.challenges.randomElement()!
    
    return History(
      date: date,
      challenge: challenge
    )
  }
  
  static func random(count: Int) -> [History] {
    return (0 ..< count)
      .map({ _ in self.random() })
      .sorted(by: { $0.date < $1.date })
  }
}
