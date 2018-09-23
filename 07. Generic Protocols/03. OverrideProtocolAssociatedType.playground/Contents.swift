/*:
 ## Learn Swift
 ### Generic Protocols
 ### Override Protocol Associated Type
 
 **Problem:** How to override type-defined Protocol?
 ---
 */

//: Design Protocol
protocol FamilyProtocol {
    associatedtype familyType = Int
    var familyMembers: [familyType] { get set }
}


//: Design Struct
struct NumberFamily: FamilyProtocol {
    var familyMembers: [Int] = [1, 2, 3]
}

let numberFam = NumberFamily() //familyType == Int

//: Override Associated Type Directly
struct NormalFamily: FamilyProtocol {
    // Typealias familyType = String
    // var familyMembers = ["Niks", "Nikhil"]
    
    var familyMembers = ["Niks", "Nikhil"]
}

//: Override Associate Type With Generic Struct
struct niksFamily<T>: FamilyProtocol {
    var familyMembers: [T] = []
}

let family = niksFamily(familyMembers: ["niks", "nikhil", "Arora"])
    // 1. T becomes String ["Niks", "nikhil", "arora"]
    // 2. familyType becomes String based on T
