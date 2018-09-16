/*:
 ## Learn Swift
 ### Chapter 1: The Swift Fundamentals
 ### SubScripts
 
 **Problem:**
 1. When I create an object, I want a shortcut without calling a method.
 
 ---
*/

//: Normal Method
struct HelloKitty {
    func saySomeThing() -> String {
        return "I'm Cute"
    }
}

HelloKitty().saySomeThing()

//: Introducing SubScripts

struct WeekDays {
    var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
    subscript(index: Int) -> String {
        return days[index]
    }
}

let myDays = WeekDays()
myDays.days
myDays[0]
myDays[1]


//: Dictionary Type

var info = ["Height": 183, "Body Fat": 12.5, "Weight": 76]
let height = info["Height"]

struct HealthInfo {
    var info = ["Height": 183, "Body Fat": 12.5, "Weight": 76]
    
    subscript(key: String) -> Double {
        if let newInfo = info[key] {
            return newInfo
        } else {
            return 0
        }
    }
}

let nikhilInfo = HealthInfo()
let myHeight = nikhilInfo["FootSize"]

//: Stortcoming of subscript
// No Context = 🎅🏻

/*:
 Usage Case
 1. Get the number of rows in table/Collection
 2. Anything has to do with pair and Value
 
*/
