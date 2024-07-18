import UIKit

var weeklyTemperatures: [String : Int] = ["Monday" : 70, "Tuesday" : 75, "Wednesday" : 72, "Thursday" : 71, "Friday" : 69, "Saturday" : 70]

weeklyTemperatures["Monday"]! += 5

print("The temperature on Monday is: \(weeklyTemperatures["Monday"]!)ºF")

// Check if Sunday is in the dictionary
if let temperature = weeklyTemperatures["Sunday"] {
    print("The temperature on Sunday is: \(temperature)ºF")
} else {
    weeklyTemperatures.updateValue(100, forKey: "Sunday")
    print(
        "The temperature for Sunday is: \(weeklyTemperatures["Sunday"]!)"
    )
}

// Reset dictionary for a new week
if weeklyTemperatures.count == 7 {
    print("Weather infomation has been saved for the week")
    weeklyTemperatures = [:]
    print("Weather information has been reset.")
}
