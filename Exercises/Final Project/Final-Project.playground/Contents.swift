import UIKit

class BankAccount {
        
    var accountType: String = ""
    
    // Function to greet user
    func greeting() {
        print("Welcome to your Virtual Banking System")
    }
    
    // Function for displaying options
    func displayMenu() {
        print("What kind of account would you like to open?")
        print("1.) Debit Account")
        print("2.) Credit Account")
        print("\n")
    }
    
    func userInput(numpadKey: Int) {
        
        switch numpadKey {
        case 1:
            accountType = "Debit"
            print("You have selected \(numpadKey) - \(accountType)")
            print("You have opened a \(accountType) account")
        case 2:
            accountType = "Credit"
            print("You have selected \(numpadKey) - \(accountType)")
            print("You have opened a \(accountType) account")
        default:
            print("Invalid input. Please input a valid option\n")
            break
        }
    }
}

let accountOne = BankAccount()

// Greet user
print(accountOne.greeting())

// Get random number for user input
var numberPadKey = Int.random(in: 1...5)

// Simulate user input and show menu
repeat {
    accountOne.displayMenu()
    numberPadKey = Int.random(in: 1...5)
    accountOne.userInput(numpadKey: numberPadKey)
} while (numberPadKey > 2)


