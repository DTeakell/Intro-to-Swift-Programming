import UIKit

// Score properties
let levelScore = 10

var gameScore = 0
var bonusLevelScore = 10.0

// Level Properties
let levels = 9
var currentLevel = 8

// Advanced Score Properties
let levelLowestScore = 0
let levelHighestScore = 100
let levelScoreDifference = levelHighestScore - levelLowestScore
let levelAverageScore: Double = Double(levelScoreDifference) / Double(levels)





gameScore += levelScore
print("Your current score is: \(gameScore)")

bonusLevelScore += Double(gameScore)
print("Your bonus is: \(bonusLevelScore)")

gameScore += Int(bonusLevelScore)
print("Your final score is: \(gameScore)")

print("Level \(currentLevel) Average Score: \(levelAverageScore.formatted(.number))")
