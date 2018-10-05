/*:
 
 ## Learn Swift
 ### Swift Memory Management
 ### @escape and @autoClosures
 
 **Problem:** What are those?
 ---
 */

//: Scenario 1

var closureBlock: [() -> Void] = []

func funcWithClosure(closure: @escaping () -> Void) {
    closureBlock.append(closure)
}

// If the closure executed after the function finishes == @escape

//: Scenario 2
import Foundation

func funcWithNetworkingClosure(closure: @escaping() -> Void) {
    DispatchQueue.global().async {
        closure() // EX) downloading
    }
}


// funcWIthNetworkingClosure {
// for _ in 1...1000 {
// print("Downloading")
// }
// }

//: Normal Function
class Normal {
    let name = "Nikhil"
    
    func normalFunctionWithClosure(closure: (String) -> Void) {
        closure(self.name)
    }
}

Normal().normalFunctionWithClosure{ (myName) in
    print(myName)
}

//: Benefits of Non-Escaping
//: 1. There is no retention cycle for non-escaping
//: 2. You may use `self` keyword without worring about memory leak
//: 3. Performance and the ability for the compiler to optimize.

//: @autoclosure
func checkIDCard(hasCard: @autoclosure() -> Bool) {
    if hasCard() {
        print("You've an ID")
    }
}

checkIDCard(hasCard: true)

//: Lazy Init Capture
class NiksGreet {
    var name = "Nikhil the Developer"
    
    lazy var greeting: String = {
        return "Hello, \(self.name)"
    }()
    
    deinit {
        print("I'm gone, bruh 🙆🏻‍♀️")
    }
}

var niksGreet: NiksGreet? = NiksGreet()
niksGreet?.greeting
niksGreet = nil // "I'm gone, bruh  🙆🏻‍♀️"
// No-escaping by default
