//
//  QuizLogic.swift
//  MyAdventure
//
//  Created by user231253 on 2/9/23.
//

import Foundation

struct QuizLogic {
    
    var questionIndex : Int = 0
    var optionPick : Int = 0
    
    
    let question = [
        Question("Which Disney Resort Would I Stay At?",
                 "Grand Floridian Villas",
                 "Disney Spring Resort",
                 "Disney Spring Resort"),
        Question("Which Disney Princess Would I Eat Breakfast With?",
                 "Moana",
                 "Queen Elsa",
                 "Queen Elsa"),
        Question("Which Disney Park Would I Spend the Day At?",
                 "Animal Kingdom",
                 "Epcot",
                 "Epcot"),
        Question("Which is My Favorite Dessert?",
                 "Pineapple Lumpia",
                 "Dole Whip Ice Cream",
                 "Dole Whip Ice Cream"),
        Question("Which type of Transportation Would I take?",
                 "Skyliner",
                 "Monorail",
                 "Monorail")
    ]
    
    mutating func compareUserResponse(_ response: String) -> Bool {
        if response == question[questionIndex].answer {
            optionPick += 1
            return true
        } else {
            return false
        }
    }
        
    
    mutating func increaseIndex() {
            if questionIndex < question.count - 1 {
                questionIndex += 1
            } else {
                questionIndex = 0
                optionPick = 0
            }
        }
        
        func getScore() -> Int {
            return optionPick
        }
        
        func getNextQuestion() -> String {
            return question[questionIndex].question
        }
        
        func getOptionOne() -> String {
            return question[questionIndex].option_one
        }
        
        func getOptionTwo() -> String {
            return question[questionIndex].option_two
        }
        
        func getImageName() -> Int {
            return questionIndex
        }
    
    
}
