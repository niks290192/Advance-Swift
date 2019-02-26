/*:
 ## Learn Swift
 ### Advance Enum
 ### Generic Enum
 
 **Problem:** A little more complex associate Value
 ---
 */

//: Introducing Generic Enum
enum Information<T, U> {
    case name(T)
    case website(T)
    case age(U)
}

// Information.name("NiKS")
// T is "String", but U?

Information<String, Int>.age(20)

//: Optionals with Enum
let explicitOptionals = Optional("Niks")
let quickOptionals: String? = "Niks"

print(explicitOptionals)
print(quickOptionals)

//: Custom Optionals

enum MyOptional<T> {
    case none // nil
    case some(T)
    
    init(_ anyValue: T) {
        self = MyOptional.some(anyValue)
    }
}

MyOptional("Nikhil")

// if let value = myOptional {
//      print(value)
// }
