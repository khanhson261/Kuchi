//
//  ChallengeView.swift
//  Kuchi
//
//  Created by Khanh Son on 1/5/23.
//

import SwiftUI

struct ChallengeView: View {
    let challengeTest: ChallengeTest
    @State var showAnswers = false
    var body: some View {
      // 1
    VStack { // 2
        Button(action: {
          showAnswers.toggle()
    }) {
    // 3
          QuestionView(question: challengeTest.challenge.question)
            .frame(height: 300)
    }
    // 4
        if showAnswers {
          Divider()
          // 5
          ChoicesView(challengeTest: challengeTest)
            .frame(height: 300)
    .padding() }
    } }
    
    
    struct ChallengeView_Previews: PreviewProvider {
        static let challengeTest = ChallengeTest(
            challenge: Challenge(
                question: "􏰀􏰁􏰂􏰃 􏰅􏰆􏰇", pronunciation: "Onegai shimasu", answer: "Please"
            ),
            answers: ["Thank you", "Hello", "Goodbye"]
        )
        static var previews: some View {
            // 2
            return ChallengeView(challengeTest: challengeTest)
        }
    }
}
