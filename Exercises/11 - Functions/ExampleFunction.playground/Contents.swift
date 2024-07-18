import UIKit


func printGreeting(firstName: String, language: String = "") {
    switch language {
        
    case "French":
        print("Bonjour, \(firstName)")
    
    case "German":
        print("Hallo, \(firstName)")
        
    case "Japanese":
        print("こんにちは, \(firstName)")
        
    case "Chinese":
        print("你好, \(firstName)")
        
    default:
        print("Hello, \(firstName)")
    }
}

// Since the default value is English, there is no need to specify the language value for English.
// So the default value can be empty since English is the default language.
printGreeting(firstName: "Dillon")

