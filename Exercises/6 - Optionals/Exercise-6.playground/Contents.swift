import UIKit

// Create password
var password = "1234"


// Create passcode
let passcode = Int(password)


// Change password to a string of letters
password = "Hello, Developer!"


// Check if the password is valid
if let code = Int(password) {
    print("Passcode Successful: \(code)")
} else {
    print("Passcode Unsuccessful")
}


// Create integer constants
let accessCode: Int?

if let code = Int(password) {
    accessCode = code
} else {
    print("Access Code: Default (1111)")
}

