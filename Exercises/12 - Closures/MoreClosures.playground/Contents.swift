import UIKit

var goldBars: Int = 0

let unlockTreasureChest = {(inventory: inout Int) in
    inventory += 100
}

unlockTreasureChest(&goldBars)
print(goldBars)
