/*:
 ## Learn Swift
 ### Chapter 1: The Swift Fundamentals
 ### Extensions
 
 **Problem:**
 1. I Like to keep it short and modularlized
 2. Prevent anything massive.
 ---
*/

//: Design Class
struct Niks {
    var name = "Niks"
    var skill = "Work"
    
    init() {
        //
    }
}

Niks().name //"Niks"

//: Extend Class
extension Niks {
    var description: String {
        let myName = self.name
        let mySkill = self.skill
        return "I'm \(name), I Know \(skill)"
    }
    
    init(enterSkill: String) {
        self.skill =  enterSkill
        print("You've entered New SKill")
    }
    
    subscript(mySkill: String) -> String {
        return "This is your Secret Weapon"
    }
}

//: Check
let niks = Niks()
niks.description // "I'm Niks, I Know work"

//: Extension to Swift Types
extension Int {
    var squared: Int {
        return self * self
    }
}

//: > Remember, 'Int' just a struct

let myNumber = 10
myNumber.squared //100

//: Rule in the Swift Extension
//: - You may not have stored Property


/*:
 
 Extension in Swift
 
 - Add Computed Instance properties and computed type properties.
 - Define Instance methods and Type methods (Later)
 - Provide new Initializers
 - Define Subscripts
 - Define and use new nested types with enum/struct (Later)
 - Make an existing type confirm to a protocol(Later)
*/

//: > This is super useful. But, When protocols meet extensions, it becomes 😱
