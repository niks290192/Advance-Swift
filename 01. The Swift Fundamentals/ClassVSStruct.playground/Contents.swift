/*:
 
 ## Learn Swift
 ### Chapter 1: The Swift Fundamentals
 ### Class VS Struct
 
 **Problem:**
 1. What are the difference besides Inheritance
 2. When to use struct over class?
 
 ---
 */

//: Design Class
class HumanClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

//: Create Instance
var humanClassObject = HumanClass(name: "Nikhil")
humanClassObject.name

let newHumanClassObject = humanClassObject
newHumanClassObject.name
newHumanClassObject.name = "niks"
humanClassObject.name

//: Design Struct
struct HumanStruct {
    var name: String
    init(name: String) {
        self.name = name
    }
}

var structObject = HumanStruct.init(name: "NikhilA")
var newStructObject = structObject

newStructObject.name = "niksAr"
structObject.name

//: ### One more difference in Mutability
//: Mutable Class
class NikhilClass {
    var name = "Nikhil"
}

let nikhilClass = NikhilClass()
nikhilClass.name = "niks"

let newNikhilClass = nikhilClass
newNikhilClass.name = "Niks the developer"
nikhilClass.name

//: Immutable Struct
struct NikhilStruct {
    var name = "Nikhil"
}

let nikhilStruct = NikhilStruct()
//nikhilStruct.name


