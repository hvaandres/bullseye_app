//
//  Game.swift
//  Bullseye
//
//  Created by Andres Haro on 12/13/22.
//

import Foundation

struct Game {
    
    var target = Int.random(in: 1..<100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        let difference = abs(target - sliderValue)
        let awardedPoints = 100 - difference
//        if difference < 0 {
//            difference = difference * -1
//            // or difference *= -1
//            // or diffrence = -difference
//        }
       
        return awardedPoints
    }
}
