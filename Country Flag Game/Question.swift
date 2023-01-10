//
//  Question.swift
//  Country Flag Game
//
//  Created by caden christesen on 1/9/23.
//

import Foundation

struct Answer: Identifiable{
    var id = UUID()
    var text: String
    var isCorrect: Boolean
}
struct Question: Identifiable{
    var id = UUID()
    var correctAnswer: Answer
    var incorrectAnswers: [Answer]
}
