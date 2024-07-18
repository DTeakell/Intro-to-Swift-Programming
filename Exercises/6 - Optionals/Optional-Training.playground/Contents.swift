import UIKit

/// An optional is a variable thats value can be either filled or empty.
/// Example:
var optionalString: String? = "Value" // This contains a value
print(optionalString ?? "No value") // You must provide a default value in the case the variable is empty

// optionalString = nil // Now the value is 'nil'

/// Using if-let statements
/// An if-let statement is used to safely unwrap optionals. It basically allows you to check whether or not the optional contains a value.
/// If the optional contains a value, do something.
/// If not, then do something else.
/// Example:
if let possibleString = optionalString {
    print("Contains value: \(String(describing: optionalString))")
} else {
    print("Contains no value: nil")
}

/// Example:
var userName: String? = nil // Username has no value yet

if let unwrappedName = userName {
    print("The user name is: \(unwrappedName)")
} else {
    print("User name is empty")
}

/// Example
var number: Int? = nil

func square(a: Int) -> Int {
    return a * a
}

/// When optional binding, you can use the same name as the variable. This is a temporary constant.
if let number = number {
    square(a: number)
} else {
    print("Value is empty. Function not ran.")
}


