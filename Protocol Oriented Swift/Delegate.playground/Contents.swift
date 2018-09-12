/*:
 ## Learn Swift
 ### Protocol Oriented Swift
 ### Delegate
 
 **Problem:** How does delegate even work?
 ---
 */

//: > **Purpose of delegate:** Communicate/Pass data between objects

//: **Goal:** Send data from `FirstVC` to `SecondVC`

//: ### CEO and Secretary Relationship
//: Design Protocol
protocol PassDataDelegate {
    func passData(data: String)
}

//: Design Delegater (Sender)
class FirstVC {
    func drawCircle() { }
    var delegate: PassDataDelegate?
}

FirstVC().delegate?.passData(data: "a bunch of contracts")
//: Design Delegate (Receiver)

class SecondVC: PassDataDelegate {
    func passData(data: String) {
        print("The CEO gave me \(data)")
        // Update the UI
    }
}

//: Create Objects
let firstVC = FirstVC()
let secondVC = SecondVC()

//: Assign Delegate
firstVC.delegate = secondVC
firstVC.delegate?.passData(data: "a bunch of contracts")

//: Practical Example in iOS
import UIKit

class NikhilViewController: UIViewController, UITableViewDelegate {
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(tableView)
        // Hey NikhilViewController/Delegate, do something with data I've given you
        // Download Image....
        //....
    }
}

//: - `UITableView` is the delegator/CEO/Sender
//: - `NikhilViewController` is the delegate/Secertary/receiver

