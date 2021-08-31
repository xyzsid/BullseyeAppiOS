//
//  Game.swift
//  Bullseye
//
//  Created by Sid on 7/5/21.
//

import Foundation

struct Game{
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        let score =  100 - abs(target - sliderValue)
        if(sliderValue == target){
            return 200
        } else if(sliderValue == target + 2 || sliderValue == target - 2){
            return score + 50
        } else {
            return score
        }
    }
    
    mutating func startNewRound(points: Int){
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
    
    mutating func restart(){
        score = 0
        round = 0
    }
}
 
