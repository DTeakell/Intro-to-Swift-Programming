import UIKit

let levels = 10
let freeLevels = 4
let bonusLevels = [6, 8]

// Iterate through all levels
for level in 1...levels {
    
    // Check if current level is bonus
    if level == 6 || level == 8 {
        print("Level \(level) is a bonus level!")
    } else {
        print("You are on level \(level)")
    }
    
    // Check if current level is free
    if level <= 4 {
        print("Level \(level) is free! \n")
    } else {
        print("Please purchase full game to access additional levels.")
        break
    }
    
    
}
