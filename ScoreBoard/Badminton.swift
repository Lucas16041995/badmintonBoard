//
//  Badminton.swift
//  ScoreBoard
//
//  Created by chiaowei on 2023/9/12.
//

import Foundation
struct badmintonScore {
    var scoreBlue: Int
    var scoreRed: Int
    var scoreBlue1: Int
    var scoreRed1: Int
    var roundBlue: Int
    var roundRed: Int
    var roundBlue1: Int
    var roundRed1: Int
    var player: String
    
    mutating func newGame() {
        self.scoreBlue = 0
        self.scoreRed = 0
        self.scoreBlue1 = 0
        self.scoreRed1 = 0
        self.roundBlue = 0
        self.roundRed = 0
        self.roundBlue1 = 0
        self.roundRed1 = 0
    }
    
    mutating func countBlueScore(){
        self.scoreBlue += 1
        self.scoreBlue1 = self.scoreBlue
    }
    
    mutating func countRedScore(){
        self.scoreRed += 1
        self.scoreRed1 = self.scoreRed
    }
    
    mutating func countBlueRound(){
        self.roundBlue += 1
        self.roundBlue1 = roundBlue
    }
    
    mutating func countRedRound(){
        self.roundRed += 1
        self.roundRed1 = roundRed
    }
    
    mutating func aroundClear(){
        self.scoreBlue = 0
        self.scoreRed = 0
        self.scoreBlue1 = 0
        self.scoreRed1 = 0
    }
    
    mutating func minusBlueScore(){
        if self.scoreBlue != 0{
            self.scoreBlue -= 1
            self.scoreBlue1 = self.scoreBlue
        }
    }
    
    mutating func minusRedScore(){
        if self.scoreRed != 0{
            self.scoreRed -= 1
            self.scoreRed1 = self.scoreRed
        }
    }
    
    mutating func chageOfScence(){
        self.scoreBlue = self.scoreRed
        self.scoreRed = self.scoreBlue1
        self.scoreBlue1 = self.scoreRed1
        self.scoreRed1 = self.scoreRed
        
        self.roundBlue = self.roundRed
        self.roundRed = self.roundBlue1
        self.roundBlue1 = self.roundRed1
        self.roundRed1 = self.roundRed
    }
}


