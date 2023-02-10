//
//  ViewController.swift
//  MyAdventure
//
//  Created by user231253 on 2/8/23.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var background: UIStackView!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var optionOne: UIButton!
    
    @IBOutlet weak var optionTwo: UIButton!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var quizlogic = QuizLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func answerSubmitted(_ sender: UIButton) {
        let userPick = sender.titleLabel!.text!
        
        let answerPicked = quizlogic.compareUserResponse(userPick)
        
        if answerPicked {
            sender.backgroundColor = UIColor.purple
        } else {
            sender.backgroundColor = UIColor.systemPink
        }
        
        quizlogic.increaseIndex()
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        displayLabel.text = "Your Choice: \(quizlogic.getScore())"
        
        questionLabel.text = quizlogic.getNextQuestion()
        //background.image = UIImage(named: String(quizlogic.getImageName() + 1))
        
        optionOne.setTitle(quizlogic.getOptionOne(), for: .normal)
        optionTwo.setTitle(quizlogic.getOptionTwo(), for: .normal)
        
        optionOne.backgroundColor = UIColor.clear
        optionTwo.backgroundColor = UIColor.clear
        
    }
    
}
