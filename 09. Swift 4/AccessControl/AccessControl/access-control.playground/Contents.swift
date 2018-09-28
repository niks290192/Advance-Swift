/*:
 ## Learn Swift
 ### What's New in Swift 4
 ### Access Control
 
 **Problem:** I don't want you to touch my code.
 ---
 */

/*
 ### Why is this important?
 - Reduce indexing/compilation time while debugging an app.
 - Apple Engineers de not want developers to touch their code, sometimes.
 - No need to overwhelm your teammates with unnecessary methods.
 */

/*:
 ### 5 Levels of Access Control
 1. `private` (Most Secure)
 2. `fileprivate`
 3. `internal`
 4. `public`
 5. `open` (Least Secured)
 */

//: ### Private
//: Ex 1) Game Application
class Game {
    private var number = 0
    
    var score: Int {
        return number
    }
    
    func increaseNumberByOne() {
        number += 1
    }
}

//Game().number (Error)

Game().score

//: Ex 2) Singleton
class AccountManager {
    static let sharedInstance = AccountManager()
    var userInfo = (ID: "niksthedev", Password: 011234275)
    
    private init() {}
}

//: ### Swift 4 Private Extension
class MyStatus {
    private var isHappy = true
}

extension MyStatus {
    func checkStatus() {
        print(isHappy)
    }
}

//: ### Private Setter Only
// Open View Controller
class Human {
    private(set) var name: String
    init(enterName: String) {
        name = enterName
    }
}

let niks = Human(enterName: "Nikhil Arora")
// niks.name = "Nikhil" //Error
