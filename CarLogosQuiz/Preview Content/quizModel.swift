//
//  quizModel.swift
//  QuizFlag
//
//  Created by Emir Ismail Ozdemir on 2.04.2024.
//

import Foundation

struct QuizModel{

var img: String?
var text: String?
var answer: [String]
var correct: Int?

}

var myQuiz1 : [QuizModel] = [
    QuizModel(img: "logo1",
              text: "Yukarıdaki logo hangi otomobil üreticisine aittir?",
              answer: ["Toyota", "Honda", "Nissan", "Subaru"],
              correct: 0),
    
    QuizModel(img: "logo2",
              text: "Yukarıdaki logo hangi spor otomobil üreticisine aittir?",
              answer: ["Ford", "Chevrolet", "VolksWagen", "BMW"],
              correct: 1),
    
    QuizModel(img: "logo3",
              text: "Yukarıdaki logo hangi lüks otomobil üreticisine aittir",
              answer: ["Audi", "Bentley", "Rolls-Roycw", "Cadillac"],
              correct: 1),
    
    QuizModel(img: "logo4",
              text: "Yukarıdaki logo hangi elektirikli otomobil üreticisine aittir?",
              answer: ["Tesla", "Nissan", "BMW", "Togg"],
              correct: 0),
    
    QuizModel(img: "logo5",
              text: "Yukarıdaki logo hangisi Yarış otomobili üreticisine aittir?",
              answer: ["Nissan", "Ferrari", "GMC", "McLaren"],
              correct: 3),
]

func SaveScore(quiz: String, score: Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func LoadScore(quiz: String) -> Int{
    return UserDefaults.standard.integer(forKey: quiz)
}
