//
//  Data.swift
//  Country Flag Game
//
//  Created by caden christesen on 1/11/23.
//

import Foundation
struct Data {
    let questions = [
 //first 4
        Question(correctAnswer:
                Answer(text: "Angolia", isCorrect: true),
              incorrectAnswers: [
                Answer(text: "Austria", isCorrect: false),
                Answer(text: "China", isCorrect: false),
                Answer(text: "England", isCorrect: false)
              ])
        ,
        Question(correctAnswer:
                Answer(text: "Austria", isCorrect: true),
              incorrectAnswers: [
                Answer(text: "Angolia", isCorrect: false),
                Answer(text: "China", isCorrect: false),
                Answer(text: "England", isCorrect: false)
              ])
        ,
        Question(correctAnswer:
                Answer(text: "China", isCorrect: true),
              incorrectAnswers: [
                Answer(text: "Austria", isCorrect: false),
                Answer(text: "Angolia", isCorrect: false),
                Answer(text: "England", isCorrect: false)
              ])
        ,
        Question(correctAnswer:
                Answer(text: "England", isCorrect: true),
              incorrectAnswers: [
                Answer(text: "Austria", isCorrect: false),
                Answer(text: "China", isCorrect: false),
                Answer(text: "Angollia", isCorrect: false)
              ])
        ,
    //second 4
    Question(correctAnswer:
            Answer(text: "Estonia", isCorrect: true),
          incorrectAnswers: [
            Answer(text: "France", isCorrect: false),
            Answer(text: "Germany", isCorrect: false),
            Answer(text: "Greece", isCorrect: false)
          ])
    ,
    Question(correctAnswer:
            Answer(text: "France", isCorrect: true),
          incorrectAnswers: [
            Answer(text: "Estonia", isCorrect: false),
            Answer(text: "Germany", isCorrect: false),
            Answer(text: "Greece", isCorrect: false)
          ])
    ,
    Question(correctAnswer:
            Answer(text: "Germany", isCorrect: true),
          incorrectAnswers: [
            Answer(text: "France", isCorrect: false),
            Answer(text: "Estonia", isCorrect: false),
            Answer(text: "Greece", isCorrect: false)
          ])
    ,
    Question(correctAnswer:
            Answer(text: "Greece", isCorrect: true),
          incorrectAnswers: [
            Answer(text: "France", isCorrect: false),
            Answer(text: "Germany", isCorrect: false),
            Answer(text: "Estonia", isCorrect: false)
          ])
    ,
}
