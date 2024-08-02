import UIKit

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

var newAccount = BankAccount(debitBalance: 1000, creditBalance: 2000)
print(newAccount.creditBalanceInfo)
print(newAccount.debitBalanceInfo)

newAccount.debitDeposit(300)
newAccount.creditWithdrawal(500)

newAccount.creditDeposit(1000)
