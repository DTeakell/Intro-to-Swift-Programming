import UIKit

let levelScores = [10, 20, 30, 40, 50, 60, 70]
var gameScore = 0

var weeklyTemperatures: [String: Int] = ["Monday" : 70,
                                         "Tuesday" : 75,
                                         "Wednesday" : 78,
                                         "Thursday" : 80,
                                         "Friday" : 74,
                                         "Saturday" : 76,
                                         "Sunday" : 73]

// Create a synchronized array to order days
let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

// Create another synchronized array to order temperatures
let temperatures = [70, 75, 78, 80, 74, 76, 73]



// Create a tuple using a for-in loop
for (level, score) in levelScores.enumerated() {
    print("Level \(level + 1): \(score)")
}

print("\n")

// Add all individual level scores together
for level in levelScores {
    gameScore += level
    print(gameScore)
}

print("\n")
weeklyTemperatures.removeValue(forKey: "Monday")
weeklyTemperatures["Monday"]! += 10

// Iterate through all days
for (day, temperature) in weeklyTemperatures {
    print("\(day): \(temperature)ºF")
}
print("\n")


// Iterate through all days in order and print the temperature of the days
for index in 0..<days.count {
    print("\(days[index]): \(temperatures[index])ºF")
}






