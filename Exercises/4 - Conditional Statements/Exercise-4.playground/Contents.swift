import UIKit

import Foundation


let morningTemperature = 60
let eveningTemperature = 70
var temperatureMeasurementUnit = "Farenheit"
let currentRegion = "USA"

// Create a boolean to see if the user has the free or paid version
var hasPaidVersion = false

// Check status of application
if hasPaidVersion == true {
    print("You're using the paid version. Thank you!")
} else {
    print("You are using the free version. Please upgrade to unlock more features.")
}


// Check the unit of measurement for the temperature
if temperatureMeasurementUnit == "Farenheit" {
    print("The temperature is in Fahrenheit.")
} else if temperatureMeasurementUnit == "Celsius" {
    print("The temperature is in Celsius.")
} else {
    print("The temperature unit is not recognized.")
}


// Check the forecast for the morning
if morningTemperature > eveningTemperature {
    print("The temperature will be high this morning.")
} else {
    print("The temperature this morning will be lower.")
}

// Check the region to display the temperature in the correct unit of measurement
switch currentRegion {
case "USA": temperatureMeasurementUnit = "Farenheit"
case "Europe": temperatureMeasurementUnit = "Celsius"
default: print("The region is not recognized.")
}
