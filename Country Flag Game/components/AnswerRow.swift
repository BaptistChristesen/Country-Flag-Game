//
//  AnswerRow.swift
//  Country Flag Game
//
//  Created by caden christesen on 1/10/23.
//

import SwiftUI

struct AnswerRow: View {
    @EnviromentObject var quizManager: QuizManager
    var answer: Answer
    @State private var isSelected = false
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "circle.fill")
                .font(.caption)
            Text(answer.text)
                .font(.title)
            if isSelected{
                    Spacer()
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? .green : .red)
            }
        }
        .padding()
        .frame (maxWidth:.infinity, alignment: .leading)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? .green :.red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture{
            if !quizManager.answerSelected{
                isSelected= true
                quizManager.selectAnswer(answer: answer)
            }
        }
        {
            isSelected = true
        }

    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "test", isCorrect: true))
    }
}
