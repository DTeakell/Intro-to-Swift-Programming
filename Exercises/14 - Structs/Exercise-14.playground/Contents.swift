import UIKit

struct TableReservation {
    var name: String
    let tableNumber: Int
    let numberOfPeople: Int
    
    init(name: String, tableNumber: Int, numberOfPeople: Int) {
        self.name = name
        self.tableNumber = tableNumber
        self.numberOfPeople = numberOfPeople
    }
    
    // Print information about table
    func printInformation() -> String {
        return "Party Information \nName: \(name) \nTable Number: \(tableNumber) \nNumber of People: \(numberOfPeople)"
    }
    
    // Update party information
    mutating func updateBooking(updatedName: String) {
        name = updatedName
        print("\nName has been changed to \(name).\n")
    }
}

var reservation1 = TableReservation(
    name: "Dillon",
    tableNumber: 1,
    numberOfPeople: 2
)

print(reservation1.printInformation())

reservation1.updateBooking(updatedName: "Mya")
print(reservation1.printInformation())


