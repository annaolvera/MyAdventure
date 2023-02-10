//
//  Question.swift
//  MyAdventure
//
//  Created by user231253 on 2/9/23.
//

import Foundation


struct Question {
    
    init(_ quest: String, _ op_one: String, _ op_two: String, _ answ: String) {
        
        question = quest
        answer = answ
        option_one = op_one
        option_two = op_two

    }
    
    var question: String
    var option_one: String
    var option_two: String
    var answer: String
    
}
