import UIKit

// Structs
struct User {
    let name: String
    var jobTitle: String
    var age: Int
    let email: String
    
    init(name: String, jobTitle: String, age: Int, email: String) {
        self.name = name
        self.jobTitle = jobTitle
        self.age = age
        self.email = email
    }
    
    func printInformation() {
        print("Name: \(name)")
        print("Occupation: \(jobTitle)")
        print("Age: \(age)")
        print("Email: \(email)\n")
    }
    
    mutating func isBirthdayToday() {
        age += 1
    }
}

var user1 = User(name: "User", jobTitle: "iOS Developer", age: 22, email: "randomEmail@icloud.com")
user1.printInformation()

user1.isBirthdayToday()
user1.printInformation()
