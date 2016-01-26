//
//  ViewController.swift
//  Quiz
//
//  Created by Saurav Aryal on 1/26/16.
//  email: saurav.aryal@bison.howard.edu

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions:[String] = ["Question1?", "Question2?", "Question3?"]
    let answers:[String] = ["Answer1.", "Answer2..?", "Answer3!?"]
    
    var currentQuestionIndex:Int = 0
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentQuestionIndex
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question:String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "????"
    }
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer:String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

}

