//: Playground - noun: a place where people can play

//: Playground - noun: a place where people can play

//Optionals Chaining

//Intoduction

//Welcome to Lesson 2 of The Swift Fundamentals. In the previous lesson, you've learned why we use optionals and how to convert them to normal types.

//However, you might have wondered why ? and ! automatically appear when you access properties and methods of an object. If you haven't, that's okay. The goal is to prevent you from guessing. Let us find out what goes under the hood.

//Problem:

//Why do I see ? and ! when accessing methods and properties?

//Optional Chaining in UIKit

//You might have seen,

import UIKit
let label = UIColor().highlightedTextColor?.cgcolor

//The mysterious ? appears all of a sudden. Let us attempt to replicate the phenomenon.

//Design Human
//Create a class, Human, which contains a String property, name and a method, sayHello()

class Human {
    var name: String
    
    init(name:String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello, I'm \(name)")
    }
}

//Design Apartment

//Create a class, Apartment, which contains a property whose type is Human?.
class Apartment {
    var human: Human?
}

//Initialize Property
//Create an instance of Apartment and assign its human property

var seoulApartment = Apartment()
seoulApartment.human = Human(name:"Bobby Lee")

//Call Property and Method
//Now, try to grab the human property of seoulApartment. Since the type of human is optional, ? gets added automatically.
// Rules: When you access a property whose type is optional, swift will add ? Anything that comes after the ? will be optional.

var myName = seoulApartment.human?.name //Always return an optional type since human is optional.

//myName is an optional type. Therefore, unwrapping is needed.

if let residentName = NYCApartment.human?.name {
    print(residentName) // non-optional
} else {
    print("No name available")
}


//Fource Unwrap
//you may force unwrap while optional chaining. However, if the property is not initialized, it will crash.

var NYCApartment = Apartment()
let NYCResident = NYCApartment.human!.name //Error: No value for human


//Conclusion
// You've Learned optional chainings provide shortcuts to nested properties and methods among classes and structs. However, a ? automatically appears when you access a property whose type is optional to indicate that anything that comes after may contains no value since the optional property may be nil.

//In the next lesson, you will learn how to use a guard statement to implicitly unwrap multiple optionals instead of a classic if let statement.
