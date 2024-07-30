import UIKit

// A closure that takes in no arguments, and returns void
var emptyClosure = {() -> () in
    print("This is an empty closure.")
}

emptyClosure()

// A closure that takes in a string argument, and returns a string
var stringClosure = {(name: String) -> String in
    let string = "Hello, \(name)"
    print(string)
    return string
}

stringClosure("Dillon")

// A closure that finds the max of two inputs
var findMaxClosure = {(numberOne: Int, numberTwo: Int) -> Int in
    // Terniary operator to check if numberOne > numberTwo. If so, return numberOne. If not, return numberTwo
    return numberOne > numberTwo ? numberOne : numberTwo
}

print(findMaxClosure(50, 69))

