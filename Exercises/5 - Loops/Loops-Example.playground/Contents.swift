import UIKit

// For-in loop
for dice in 1...6 {
    print("You rolled a \(dice)")
}
print("\n")

// Repeat-While loop
var firstDice = 0
var secondDice = 0

repeat {
    firstDice = Int.random(in: 1...6)
    secondDice = Int.random(in: 1...6)
    
} while firstDice != secondDice
    print("You rolled the same number!")

