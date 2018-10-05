/*:
 ## Learn Swift
 ### Protocol Oriented Swift
 ### Protocol as Type
 
 **Problem:** No more type casting
 
 ----
 */

//: Design Protocol
protocol EastAsianAble {
    var useChopstics: Bool { get }
    var origin: String { get }
}

//: Extended Protocol
extension EastAsianAble {
    // Extension may not contain stored properties
    var useChopstics: Bool {
        return true
    }
}

//: Create Blueprints
struct Indian: EastAsianAble {
    var origin: String = "Indian"
}

class Japanese: EastAsianAble {
    var origin: String = "Japan"
}

struct Chinese: EastAsianAble {
    var origin: String = "Chinese"
}

let eastAsians: [EastAsianAble] = [Indian(), Japanese(), Chinese()]

for eastAsian in eastAsians {
    print("I'm from \(eastAsian.origin)")
}

//: Practical Examples
// Combine UILabel, UIImageView, loop through to change colors, animation, and so on.
// Use your imagination.

//: Protocol met generics
protocol Sleekable {
    var price: String { get }
}

struct Diamond: Sleekable {
    var price: String = "Very High"
}

struct Ruby: Sleekable {
    var price: String  = "High"
}

struct Glass: Sleekable {
    var price: String = "Dirt Cheap"
}


func stateThePrice<T: Sleekable> (enterGem: T) {
    print("I'm expensive. In fact, I'm \(enterGem.price)")
}

stateThePrice(enterGem: Glass())



