//
//  quiz.swift
//  swift practice
//
//  Created by UCode on 11/18/17.
//  Copyright © 2017 Kevin Chen. All rights reserved.
//

import Foundation
struct Quiz {
    let question : [Question]
    let score : Int
}
struct Question {
    let text : String
    let answer : [Answer]
    let value : Int
}
struct Answer {
    let text : String
    let correct : Bool
}







func quizProgram() {
    

    
    let quiz = Quiz(question:
        [
            Question(text: "What is the first sword Cloud Strife gets in the game Final Fantasy 7", answer:
            [
                Answer(text: "Buster Sword", correct: true),
                Answer(text: "Ragnorok", correct: false),
                Answer(text: "Ultima Sword", correct: false),
                Answer(text: "Rune Blade", correct: false)
            ], value: 1),
            Question(text: "What is the Final Boss in Final Fantasy 7", answer:
                [
                    Answer(text: "Ultima Weapon", correct: false),
                    Answer(text: "Sephiroth", correct: true),
                    Answer(text: "Ruby Weapon", correct: false),
                    Answer(text: "Moogle", correct: false)
                ], value: 1),
            Question(text: "Who is the first character to join Cloud", answer:
                [
                    Answer(text: "Vincent Valentine", correct: false),
                    Answer(text: "Red XII", correct: false),
                    Answer(text: "Cait Sith", correct: false),
                    Answer(text: "Barret Wallace", correct: true)
                ], value: 1)
        ], score: 0)
    
    print("Welcome to the FF7 quiz")
    
    for question in quiz.question {
        
        let correctAnswers = question.answer.filter { $0.correct}
        
        print(question.text)
        for (index, answer) in question.answer.enumerated() {
            print("\(index + 1) \(answer.text)")
            }
        let response = readLine()
        if let unwrappedResponse = response {
            let choice = Int(unwrappedResponse)!
            if question.answer[choice-1].correct == true {
                print("Good job, the answer is")
            }
            else {
                print("Nope Sorry.")
            }
            for correctAnswer in correctAnswers{
            print(correctAnswer.text)
            
            }
        }
        
    }
}
