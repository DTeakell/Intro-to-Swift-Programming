import UIKit

class VirtualBankSystem {
    
    var accountType: String = ""
    var isOpened: Bool = true
    
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
    
    // Function for getting user input
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
    
    // Function to handle money transfer
    func moneyTransfer(transferType: String, transferAmount: Double, bankAccount: inout BankAccount) {
        switch transferType {
            // Makes a withdraw for either credit or debit accounts
        case "Withdraw":
            if accountType == "Credit" {
                bankAccount.creditWithdrawal(transferAmount)
            } else if accountType == "Debit" {
                bankAccount.debitWithdrawal(transferAmount)
            }
            else {
                print("Invalid Account Type")
            }
            // Makes a deposit for either credit or debit accounts
        case "Deposit":
            if accountType == "Credit" {
                bankAccount.creditDeposit(transferAmount)
            } else if accountType == "Debit" {
                bankAccount.debitDeposit(transferAmount)
            }
            else {
                print("Invalid Account Type")
            }
            // Ends if the account type in invalid
        default:
            break
        }
    }
    
    // Function to check balances
    func checkBalance(bankAccount: BankAccount) {
        switch accountType {
        case "Credit":
            print(bankAccount.creditBalanceInfo)
        case "Debit":
            print(bankAccount.debitBalanceInfo)
        default:
            break
        }
    }
}

struct BankAccount {
    // Create properties for account balances
    var debitBalance: Double = 0
    var creditBalance: Double = 0
    let creditLimit: Double = 1000
    
    // Properties to store info about each account's balance
    var debitBalanceInfo: String {
        return "Debit Balance: $\(debitBalance)"
    }
    var availableCredit: Double {
        return creditLimit - creditBalance
    }
    var creditBalanceInfo: String {
        return "Credit Balance: $\(creditBalance)"
    }
    
    // Adds inputted amount into the debit balance
    mutating func debitDeposit(_ amount: Double) -> Double {
        debitBalance += amount
        print("$\(amount) has been successfully deposited into your account")
        print("Current Balance: \(debitBalance)")
        return debitBalance
    }
    
    // Deducts inputted amount from the credit balance
    mutating func creditDeposit(_ amount: Double) -> Double {
        creditBalance -= amount
        print("$\(amount) has been successfully deducted from your account")
        if creditBalance < 0 {
            print("You have overpaid the balance.")
        } else if creditBalance == 0 {
            print("You have no remaining balance")
        } else {
            print("You have $\(creditBalance) left to pay.")
        }
        return creditBalance
    }
    
    // Withdraw from debit balance
    mutating func debitWithdrawal(_ amount: Double) -> Double {
        if amount > debitBalance {
            print("Insufficient funds to withdraw.")
        } else {
            debitBalance -= amount
            print("$\(amount) has been successfully withdrawn from your account")
        }
        return debitBalance
    }
    
    // Withdraw from credit balance
    mutating func creditWithdrawal(_ amount: Double) -> Double {
        if amount > availableCredit {
            print("Insufficient funds to withdraw.")
        } else {
            creditBalance += amount
            print("$\(amount) has been successfully withdrawn from your account")
        }
        return availableCredit
    }
}

func displayInterface() {
    print("1.) Check Bank Account")
    print("2.) Withdraw")
    print("3.) Deposit")
    print("4.) Exit")
}


let virtualBankSystem = VirtualBankSystem()
virtualBankSystem.greeting()

repeat {
    virtualBankSystem.displayMenu()
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.userInput(numpadKey: numberPadKey)
} while virtualBankSystem.accountType == ""
    
repeat {
    let option = Int.random(in: 1...5)
    displayInterface()
    print("User selection: \(option)")
    switch option {
    case 1:
        virtualBankSystem.checkBalance(bankAccount: bankAccount)
    case 2:
        virtualBankSystem
            .moneyTransfer(transferType: "Withdraw", transferAmount: transferAmount, bankAccount: &bankAccount)
    case 3:
        virtualBankSystem
            .moneyTransfer(transferType: "Deposit", transferAmount: transferAmount, bankAccount: &bankAccount)
    case 4:
        virtualBankSystem.isOpened.toggle()
        break
    default :
        print("Invalid option.")
    }
} while virtualBankSystem.isOpened

let transferAmount: Double = 500
print("Transfer Amount: $\(transferAmount)")
var bankAccount = BankAccount()
