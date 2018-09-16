/*:
 
 ## Learn Swift
 ### Object Oriented Swift
 ### Singleton Pattern
 */

//: > A singleton is an object which is instantiated exactly once.

class AccountManager {
    static let sharedInstance = AccountManager()
    
    var userInfo = (ID: "nikhilArora", Password: 0101863628)
    
    // Networking: Communicating server
    func network() {
        // get everything
    }
    
    private init() { }
}

AccountManager.sharedInstance.userInfo

//ViewController One

AccountManager.sharedInstance.userInfo.ID

//ViewController Two
AccountManager.sharedInstance.userInfo.ID = "NikhilAroraaa"

//ViewController Three

AccountManager.sharedInstance.userInfo.ID


//: Example `UIApplication`, `UserDefaults`, `NSNotifications`
