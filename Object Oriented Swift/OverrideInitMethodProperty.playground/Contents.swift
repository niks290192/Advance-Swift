/*:
 
 ## Learn Swift
 ### Object Oriented Swift
 ### Override Method, Init, Property
 
 Problem: Super...Super.init?
 */

import UIKit

class MyViewController: UIViewController {
    //viewDidLoad() is build-in and it runs automatically
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello")
    }
}


class Vehicle {
    var description: String {
        return "Hello, I'm moving at 30Km/hr"
    }
    
    func warning() {
        print("Be careful, I'm going pretty fast")
    }
}



//: Override Method and Property
class ToyCar: Vehicle {
    override var description: String {
        return "\(super.description) hey, I'm a cute car"
    }
    
    override func warning() {
        print("Hello, don't mind me")
        super.warning()
    }
}

let myFutureCar = ToyCar()
myFutureCar.description
// "Hello, I'm Moving at 30Km/hr, I'm a cute car"
myFutureCar.warning()
// "Hello, don't mind me"
// "Be careful, I'm going pretty fast"

//: super.init
class Human {
    var origin: String
    
    init(enterOrigin: String) {
        origin = enterOrigin
    }
}

Human(enterOrigin: "India")

class Indian: Human {
    let city: String
    
    init(enterCity: String) {
        self.city = enterCity
        super.init(enterOrigin: "New Delhi")
    }
    
    init(enterCity: String, origin: String) {
        self.city = enterCity
        super.init(enterOrigin: origin)
    }
}

//: Override Init
class Tesla {
    var numberOfWheels: Int
    
    init(enterWheelNumber: Int) {
        numberOfWheels = enterWheelNumber
    }
}

class ModelS: Tesla {
    override init(enterWheelNumber: Int) {
        super.init(enterWheelNumber: enterWheelNumber)
        print("Wow, you've got a nice car")
    }
}


ModelS(enterWheelNumber: 50)


