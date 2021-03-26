//
//  ViewController.swift
//  Quiz App
//
//  Created by Sreenivas k on 23/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var brain = Brain()
    var scoreText = 0
    

    @IBOutlet weak var Score: UILabel!
    
    @IBOutlet weak var QustionPlace: UITextView!
    @IBOutlet weak var TrueBtn: UIButton!
    @IBOutlet weak var FalseBtn: UIButton!
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    
    
    
    
    @IBAction func presed(_ sender: UIButton) {
        print(sender.currentTitle!)
        
        let pressedAnswer=sender.currentTitle!
        brain.nextQuestion()
        if brain.checkAnswer(userAnswer : pressedAnswer) {
            sender.backgroundColor=UIColor.green
        }else{
            sender.backgroundColor=UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        
        TrueBtn.backgroundColor=UIColor.clear
        FalseBtn.backgroundColor=UIColor.clear
        QustionPlace.text = brain.getQuestion()
        ProgressBar.progress = brain.getProgress()
        print(brain.getScore())
        scoreText = brain.getScore()
        Score.text = "Score: \(scoreText)"
    }
    
}

