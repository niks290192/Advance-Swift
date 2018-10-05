/*:
 ## Learn Swift
 ### Swift Memory Management
 ### Closure Retain Cycle
 
 **Problem:**
 1. How to use `capture lists` to prevent retain Cycle in closures.
 2. When to use `unowned`.
 ---
 */

//: Design Class

class NiksClass {
    var niksClosure: (() -> ())?
    var name: String = "niks"
    
    init() {
        niksClosure = {[unowned self] in
//            guard let object = self else {
//                return
//            }
            
            print("\(self.name) the developer")
        }
    }
    
    deinit {
        print("NiksClass gone")
    }
}

var niksClass: NiksClass? = NiksClass()
niksClass?.niksClosure!()

niksClass = nil


//: Design Independent Class
class Owner {
    var creditCard: CreditClass?
    deinit {
        print("Owner gone")
    }
}

//: Design Dependent Class
class CreditClass {
    unowned let owner: Owner
    
    init(enterOwner: Owner) {
        owner = enterOwner
    }
    
    deinit {
        print("Card gone")
    }
}

//: Create Instances
var niks: Owner? = Owner()
var myCard = CreditClass(enterOwner: niks!)
niks?.creditCard = myCard

niks = nil

// niks?.creditCard = myCard here in a crash

//: > If `self` will never be deallocated before the closure block, use `unowned`. If you try to access the value of an unowned reference after that instance has been deallocated, you'll get a runtime error.
