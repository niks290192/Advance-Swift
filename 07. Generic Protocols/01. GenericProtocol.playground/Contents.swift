/*:
 
 ## Learn Swift
 ### Generic Protocols
 ### Intro As Associated Type
 
 **Problem:** How to create generic protocols
 ---
 */

//: > **#1 Rule:** Type must be defined before compiled.

//: Design Generic Struct (Review)

struct GenericStruct<T> {
    var property: T?
}

let explicitly = GenericStruct<Bool>()
// T is Bool
let implicitly = GenericStruct(property: "Niks")
// T is String

//: Design Normal Protocol
protocol NormalProtocol {
    var property: String  { get set }
}

//: Design Class
class NormalClass: NormalProtocol {
    var property: String = "Niks"
}

//: ### Introducting Generic Protocol
protocol GenericProtocol {
    associatedtype myType
    var anyProperty: myType { get set }
}


//: Define Associated Type
struct SomeStruct: GenericProtocol {
    var anyProperty = 1996 //myType = String
}

//: Define Associated Type with TypeAlias
struct ExplicitStruct: GenericProtocol {
    typealias myType = Bool
    var anyProperty = true
}

