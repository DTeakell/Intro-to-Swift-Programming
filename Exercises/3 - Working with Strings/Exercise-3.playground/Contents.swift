import UIKit

let day = "Monday"
let hour = 6
let minute = 30
let period = "AM"
let timezone = "PST"

var time = "\(hour):\(minute) \(period) "
time += "\(timezone)"

let shortDay = day.prefix(3).uppercased() // Prints the first three letters of the string

print("\(shortDay) - \(time)")

print(day.count)


