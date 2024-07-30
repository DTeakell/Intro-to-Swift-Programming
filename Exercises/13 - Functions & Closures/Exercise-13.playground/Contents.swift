import UIKit

var goldBars: Int = 100
print("Total Gold Bars: \(goldBars)")

func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void) {
    inventory -= 10
    completion(inventory)
}

spendTenGoldBars(from: &goldBars) { goldBars in
    print("You spent 10 gold bars.")
    print("Gold Bars Remaining: \(goldBars)")
    
}

func twoNumbers(num1: inout Int, num2: inout Int) {
    print(num1 + num2)
}
