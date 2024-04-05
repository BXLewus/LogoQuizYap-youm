//
//  FinalView.swift
//  QuizFlag
//
//  Created by Emir Ismail Ozdemir on 3.04.2024.
//

import SwiftUI

struct FinalView: View {
    var score: Int
    var body: some View {
        VStack{
            Text("Final Skorunuz: \(score)")
                .onAppear(){
                    SaveScore(quiz: "myQuiz1", score: self.score)
                }
        }
    }
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView(score: 1)
    }
}
