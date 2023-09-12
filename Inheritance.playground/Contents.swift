import UIKit

class Dog {
    
    var name: String
    var breed: String
    
    
    var info: String {
        "The breed of \(name) is a \(breed)"
    }
    
    func makeNoize() -> String {
        "Hello"
    }
    
    init(name: String, breed: String) {
        self.breed = breed
        self.name = name
    }
}

class Corgi: Dog {
    
    var isHappy: Bool
    
    init(isHappy: Bool) {
        self.isHappy = isHappy
        super.init(name: "", breed: "")
    }
    
    override var info: String {
        name + " " + breed
    }
    
    override func makeNoize() -> String {
        "Hello, Sir"
    }
}

var corgi = Corgi(isHappy: true)
corgi.name = "Alisaaaaa"
corgi.breed = "Corgiiiiii "
corgi.info
corgi.makeNoize()



