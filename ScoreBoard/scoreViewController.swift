//
//  scoreViewController.swift
//  ScoreBoard
//
//  Created by chiaowei on 2023/9/3.
//

import UIKit

class scoreViewController: UIViewController {
    
    var badminton = badmintonScore(scoreBlue: 0, scoreRed: 0, scoreBlue1: 0, scoreRed1: 0, roundBlue: 0, roundRed: 0, roundBlue1: 0, roundRed1: 0, player: "")
    
    @IBOutlet weak var scoreRedCount: UILabel!
    @IBOutlet weak var scoreBlueCount: UILabel!
    @IBOutlet weak var playerTwo: UILabel!
    @IBOutlet weak var playerOne: UILabel!
    @IBOutlet weak var roundB: UILabel!
    @IBOutlet weak var roundA: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NewGame()
    }
    
    @IBAction func getRedScore(_ sender: UIButton) {
        
            if sender.state == .highlighted {
                badminton.countRedScore()
                scoreRedCount.text = String(badminton.scoreRed1)
                round()
            }
    }
    
    
    @IBAction func getBlueScore(_ sender: UIButton) {
        
            if sender.state == .highlighted {
                badminton.countBlueScore()
                scoreBlueCount.text = String(badminton.scoreBlue1)
                round()
            }
    }
    
    
    @IBAction func newGame(_ sender: UIButton) {
       NewGame()
    }
    
    @IBAction func change(_ sender: UIButton) {
        
        badminton.chageOfScence()
        
        roundA.text = String(badminton.roundBlue1)
        roundB.text = String(badminton.roundRed1)
        
        scoreBlueCount.text = String(badminton.scoreBlue1)
        scoreRedCount.text = String(badminton.scoreRed1)
        
        if playerOne.text == "Player 1" {
            playerOne.text = "Player 2"
            playerTwo.text = "Player 1"
        }else if playerOne.text == "Player 2"{
            playerOne.text = "Player 1"
            playerTwo.text = "Player 2"
        }
    }
    
    func NewGame() {
        
        badminton.newGame()
        roundA.text = "0"
        roundB.text = "0"
        scoreRedCount.text = "0"
        scoreBlueCount.text = "0"
    }
    
    
    @IBAction func minusBlueScore(_ sender: UIButton) {
        
        if sender.state == .highlighted{
            badminton.minusBlueScore()
            scoreBlueCount.text = String(badminton.scoreBlue1)
        }
    }
    
    
    @IBAction func minusRedScore(_ sender: UIButton) {
        
        if sender.state == .highlighted{
            badminton.minusRedScore()
            scoreRedCount.text = String(badminton.scoreRed1)
        }
    }
    
    func round(){
        if badminton.scoreBlue > 21  {
            
            badminton.countBlueRound()
            roundA.text = String(badminton.roundBlue1)
            badminton.aroundClear()
            scoreRedCount.text = "0"
            scoreBlueCount.text = "0"
            
        }else if badminton.scoreRed > 21{
            
            badminton.countRedRound()
            roundB.text = String(badminton.roundRed1)
            badminton.aroundClear()
            scoreRedCount.text = "0"
            scoreBlueCount.text = "0"
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
