/*:
 ## Learn Swift
 ### Swift Memory Management
 ### Intro To Memory Management
 
 **Problem:** Deallocate and allocate objects with `ARC`
 
 ---
 */

//: What is memory?
//: - Ram: Fridge
//: - Disk: Storage


//: Design Passport
class Passport {
    weak var human: Human?
    let citizenShip: String
    
    init(citizenShip: String) {
        self.citizenShip = citizenShip
        print("\(citizenShip) passport generated")
    }
    
    deinit {
        print("I, paper, am gone")
    }
}

//: Design Human
class Human {
    var passport: Passport?
    let name: String
    
    init(name: String) {
        self.name = name
        print("\(name) generated")
    }
    
    deinit {
        print("I, \(name), gone")
    }
}

// Passport(citizenship: "Republic of India")
// var myPassport = passport(citizenship: "The mars")

//: Introducing Automatic Reference Counting

//: Create Instance
var nikhil: Human? = Human(name: "Nikhil")
var passport: Passport? = Passport(citizenShip: "Republic of India")

//: Dellocate
// nikhil = nil
// passport = nil

//: > The only Rule: if the reference count is zero/no relationship, the object gets purged out of the memory.
var niks: Human? = Human(name: "Niks")
var myPassport: Passport? = Passport(citizenShip: "Republic of India")

niks?.passport = myPassport
myPassport?.human = niks

// Option One
// niks = nil
// mypassport = nil

// Option Two
// myPassport = nil
// niks = nil

//: > There is no such thing as `reference cycle` in structs and enums.
