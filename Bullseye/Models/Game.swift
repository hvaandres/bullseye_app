//
//  Game.swift
//  Bullseye
//
//  Created by Andres Haro on 12/13/22.
//

import Foundation

struct Game {
    
    var target: Int = 42
    var score: Int = 0
    var round: Int = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
    }
}
