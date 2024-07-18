import UIKit

var levelScores: [Int] = []
var firstLevelScore = 20
let levelBonusScore = 5
let freeLevelsScores: [Int] = [20, 30]
let numberOfFreeLevels = 3


firstLevelScore += levelBonusScore

// First Level has been complete
levelScores.append(firstLevelScore)

// Three levels have been completed
levelScores.append(contentsOf: freeLevelsScores)

if levelScores.count >= numberOfFreeLevels {
    print("You must unlock more levels by upgrading.")
} else {
    print("You have unlocked all levels.")
}
