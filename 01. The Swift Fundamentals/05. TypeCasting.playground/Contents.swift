//: Type Casting in UIKit
import UIKit

let label = UILabel() as UIView

//: Design Class
class Human {
    func introduce() {
        print("Hi, I'm a Human")
    }
}

//: Design SubClass
class Korean: Human {
    func singGangNamStyle(){
        print("Oppa Gangnam Style")
    }
}

let nikhil = Korean()
nikhil.introduce()
nikhil.singGangNamStyle()

//: Type Casting
let newNikhil = nikhil as Human
newNikhil.introduce() // upcasting
//: > as --> Upcasting (always works)

class Japanese: Human {
    func doNinja() {
        print("Shh...")
    }
}

//: Upcasting with type
var name = "Nikhil" as Any
var number = 20 as Any

var anyArray = [name, number]
// Downcasting only occurs after upcasting
// Downcasting --> specific

//: ### Downcasting
//: Explicit/Force Downcasting
// let newValue = anyArray[1] as! String
let newValue = anyArray[1] as! Int

//: Implicit Downcasting (Safe)
let newNewValue = anyArray[0] as? Int
let newNewNewValue = anyArray[1] as? Int
print(newNewNewValue)

//: Grouping
let shion = Japanese()
let lee = Korean()
let kenji = Japanese()
let park = Korean()

// let humans: [Human] = [shion as Human, lee as Human, kenji as Human, park as Human]

let humans: [Human] = [shion, lee, kenji, park]

for human in humans {
    if let korean = human as? Korean {
        korean.singGangNamStyle()
    }
    if let japanese = human as? Japanese {
        japanese.doNinja()
    }
}

//: Practical Type Casting Usage
let loginButton = UIButton()
let loginMessage = UILabel()
let loginView = UIView()

let UIComponents = [loginView, loginButton, loginMessage]

for component in UIComponents {
    if let button = component as? UIButton {
        //Change background color
        // Add title
        //...
    }
    
    if let label = component as? UILabel {
        
    }
    
    if let view = component as? UIView {
        
    }
}


//:Type Casting in UIKit
//let storyBoard = UIStoryBoard(name: "Main", bundle: nil)
//let vc = storyboard.instantiateViewController(withIdentifier: "VC") as! VC
