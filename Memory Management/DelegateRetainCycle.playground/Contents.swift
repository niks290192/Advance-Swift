/*:
 
 ## Learn Swift
 ### Swift Memory Management
 ### Delegate Retain Cycle
 
 **Problem:** Why Delegate should be `weak var`
 ---
 */

//: Design Protocol
protocol SendDataDelegate: class {
    
}

//: Design Sender/Delegator
class SendingVC {
    weak var delegate: SendDataDelegate?
    
    deinit {
        print("Delegator gone")
    }
}

//: Design Receiver/Delegate
class RecevingVC: SendDataDelegate {
    lazy var sendingVC: SendingVC = {
        let vc = SendingVC()
        vc.delegate = self
        return vc
    }()
    
    deinit {
        print("Delegate gone")
    }
}

//: Deallocate
var receivingVC: RecevingVC? = RecevingVC()
receivingVC?.sendingVC //Lazy Born
receivingVC = nil

//: Rules
//: - A `weak` reference allows the referencing object to become `nil` (this happens automatically when the referenced object is deallocated)
//: - Based on the rule above, the referencing object/variable mush be `optional`
