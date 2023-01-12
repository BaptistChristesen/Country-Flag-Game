//
//  QuestionView.swift
//  Country Flag Game
//
//  Created by caden christesen on 1/11/23.
//

import SwiftUI

struct QuestionView: View {
    @EnviromentObject var quizManager: QuizManager
    var body: some View {
        if quizManager.playingGame{
            VStack(spacing: 20){
                HStack {
                    Text("Country Flag Quiz")
                        .foregroundColor(.yellow)
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    Text("\(quizManager.index) out of \(quizManager.question.count)")
                        .foregroundColor(.yellow)
                        .fontWeight(.heavy)
                }
                ProgressBar(progress: quizManager.progress)
                VStack(spacing: 20){
                    Text("Which country's flag is this?")
                        .font(.title)
                    Image(quizManager.country)
                        .resizable()
                        .frame(width: 300, height: 200)
                    ForEach(quizManager.answerChoices) {
                        answer in AnswerRow(answer: answer)
                            .environmentObject(quizManager)
                    }
                }
                Button{
                    quizManager.goToNextQuestion()
                }
            Label: {
                CustomButton(text: "Next", background: quizManager.answerSelected ? .yellow: .gray)
                }
                disabled(!quizManager.answerSelected)
                Spacer()
            }
            .padding()
            .frame(width: .infinity, height: .infinity)
            .background(.cyan)
        }
        else{
            VStack(spacing: 20){
                Text("Country Flag Quiz")
                    .font(.title)
                Text("Congrats! you done!")
                Text("Your Score was \(quizManager.score) out of \(quizManager.questions.count)")
                Button{
                    quizManager.reset()
                }
            Label: {
                CustomButton(text: "Play Again")
            }
            }
            .foregroundColor(.yellow)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.cyan)
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
