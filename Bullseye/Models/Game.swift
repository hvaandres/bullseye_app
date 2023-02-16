//
//  Game.swift
//  Bullseye
//
//  Created by Andres Haro on 12/13/22.
//

import Foundation

struct LeaderboardEntry {
    let score: Int
    let date: Date
}

struct Game {
    
    var target: Int = 42
    var score: Int = 0
    var round: Int = 1
    var leaderboardEntries: [LeaderboardEntry] = []
    
    init(loadTestData: Bool = false) {
        leaderboardEntries.append(LeaderboardEntry(score: 100, date: Date()))
        leaderboardEntries.append(LeaderboardEntry(score: 90, date: Date()))
        leaderboardEntries.append(LeaderboardEntry(score: 80, date: Date()))
        leaderboardEntries.append(LeaderboardEntry(score: 70, date: Date()))
        leaderboardEntries.append(LeaderboardEntry(score: 60, date: Date()))
        leaderboardEntries.append(LeaderboardEntry(score: 50, date: Date()))
        leaderboardEntries.append(LeaderboardEntry(score: 40, date: Date()))
    }
    
    func points(sliderValue: Int) -> Int {
       let difference = abs(target - sliderValue)
        let bonus: Int
        if difference == 0 {
            bonus = 100
        } else if difference <= 2 {
            bonus = 50
        } else {
            bonus = 0
        }
        return 100 - difference + bonus
    }
    
    mutating func addToLeaderboard(point: Int) {
      leaderboardEntries.append(LeaderboardEntry(score: point, date: Date()))
      leaderboardEntries.sort { $0.score > $1.score }
    }
    
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
        addToLeaderboard(point: points)
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}
