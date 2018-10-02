/*:
 
 ## Learn Swift
 ### Object Oriented Swift
 ### Type Property and Method
 
 Problem: I'm confused by `Static`, `Final`, `Class`. What are those?
 
 */

//: Structs: Static Only
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedProperty: Int {
        get {
            return 120
        }
        set {
            print("You've set to \(newValue)")
        }
    }
    
    static func hello() {
        print("Hello")
    }
}

SomeStructure.storedTypeProperty
SomeStructure.hello()

//: Classes: Class and Static
// Static can't be overridden
class GrandParent {
    static var numberOfYearsInMarriage = 30
    static func introduce() {
        print("We've been married for \(numberOfYearsInMarriage)")
    }
    
    class func introducing() {
        print("We've been married for \(numberOfYearsInMarriage)")
    }
    
    final func cantOverride() {
        print("you can't change me")
    }
}

class Parent: GrandParent {
    override class func introducing() {
        print("I'm Married for 5 years")
    }
    //override static func introduce() {
    // print("I'm married for 5 years")
    //}
}

Parent.introducing()
Parent.introduce()

//: Application
struct BluetoothID {
    struct iPhone {
        static let iPhone4 = "1111-2222-3333-4444"
        static let iPhone5 = "2222-3333-4444-1111"
        static let iPhone6 = "3333-4444-1111-2222"
        static let iPhone7 = "4444-1111-2222-3333"
        static let iPhone8 = "0000-1111-3333-2222"
    }
}

BluetoothID.iPhone.iPhone4
BluetoothID.iPhone.iPhone8


//: Alternative
enum AirDropID: String {
    case iPhone4 = "1111-2222-3333-4444"
    case iPhone5 = "2222-3333-4444-1111"
    case iPhone6 = "3333-4444-1111-2222"
    case iPhone7 = "4444-1111-2222-3333"
    case iPhone8 = "0000-1111-3333-2222"
}

AirDropID.iPhone4.rawValue
AirDropID.iPhone8.rawValue
