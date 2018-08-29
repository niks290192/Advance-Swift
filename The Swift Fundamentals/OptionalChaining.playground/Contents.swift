/*:
 ## Learn Swift
 ### Chapter 1: The Swift Fundamentals
 ### Optional Chainings
 
 **Problem:** Why do I see "?" and "!" when accessing methods and properties?
 
 ---
*/

//: > Example from UIKit
import UIKit
let labelColor = UILabel().highlightedTextColor?.cgColor

//: Design Class
class Human {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello, I'm \(name)")
    }
}

//: Design Another Class
class Apartment {
    var human: Human?
}

//: Initialization
var delhiApartment = Apartment()
delhiApartment.human = Human(name: "Nikhil")

delhiApartment.human?.sayHello()
if let residentName = delhiApartment.human?.name {
    print("\(residentName)")
} else {
    
}

var NYCApartment = Apartment()
// let NYCApartment = NYCApartment.human!.name
