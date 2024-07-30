import UIKit

class LocalFile {
    let name: String
    let fileExtension: String
    
    init(name: String, fileExtension: String) {
        self.name = name
        self.fileExtension = fileExtension
    }
    
    var fullFileName: String {
        return name + fileExtension
    }
}

let file = LocalFile(name: "image", fileExtension: ".png")
print(file.fullFileName)
