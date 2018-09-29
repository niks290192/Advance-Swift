/*:
 ## Learn Swift
 ### What's new in Swift 4
 ### Generic Subscripts
 
 **Problem:** Can subscripts return `T`?
 ---
 */

//: Your Past
struct WeekDays {
    private var days = ["Monday", "Tuesday", "Wednesday", "Thrusday", "Friday"]
    
    subscript(index: Int) -> String {
        return days[index]
    }
}

//: JSON
struct JSON {
    private var storage: [String: Any]
    
    init(dictionary: [String: Any]) {
        self.storage = dictionary
    }
    
    subscript<T>(key: String) -> T? {
        return storage[key] as? T
    }
}

//: Create Object
let republicOfIndia = JSON(dictionary: [
    "capital": "New Delhi",
    "name": "Republic of India"
    ])

//: Access Value
let IndiaCapital: String? = republicOfIndia["capital"]
let IndiaName: String? = republicOfIndia["name"]

//: > I don't recommend using `Subscripts`
