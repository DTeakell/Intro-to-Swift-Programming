import UIKit

 var goldBars = 0

// Declare function
func unlockChest(goldInInventory: Int) -> Int {
    var goldToOpenChest: Int = 4
    let remainingGoldBars = goldBars - goldToOpenChest
    
    if remainingGoldBars < 0 {
        print("You can't unlock the chest!")
    } else {
        print("Grab your loot!")
        goldBars += 8
    }
    
    return goldBars
}

// Call function
unlockChest(goldInInventory: goldBars)

print("You have \(goldBars) gold bars!")

