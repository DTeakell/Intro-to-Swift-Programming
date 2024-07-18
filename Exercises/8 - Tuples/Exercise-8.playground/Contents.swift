import UIKit

let credentials = (password: "", passcode: -1111)
let fullCredentials = (password: "pass", passcode: 2048)

if credentials.password.isEmpty || credentials.passcode < 0 {
    print("Credentials Invalid.")
} else {
    print("Password: \(credentials.password)\n Passcode: \(credentials.passcode)")
}

if fullCredentials.password.isEmpty || fullCredentials.passcode < 0 {
    print("Credentials Invalid")
} else {
    print("Password: \(fullCredentials.password) \nPasscode: \(fullCredentials.passcode)")
}
