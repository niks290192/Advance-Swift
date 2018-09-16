/*:

 ## Learn Swift
 ### Chapter 1: The Swift Fundamentals
 ### Typealias
 
 **Problem:** The Parameters are unreadable and Boring
 
 ---
*/

//: Typealias for `String`
typealias Name = String

func insertName(name: Name) { }
insertName(name: "Nikhil Arora")

//: Typealias for Custom Class
class Employee { }

typealias MyEmployees = [Employee]
func listEmployees(enterEmployees: MyEmployees) {}

//: Typealias for Tuple
typealias GridPoint = (Int, Int)

func enterPoint(grid: GridPoint) {
    print("You've entered, \(grid.0) and \(grid.1)")
}

enterPoint(grid: (4, 2))

//: ### Type Definition

//: Array Type
let arrayOne: Array<String> = ["Niks", "Nikhil"] //Generic Struct
let arrayTwo: [String] = ["Niks", "Nikhil"]


//: Dictionary Type
let dictOne: [String: Int] = ["Alex": 31, "Paul": 39]
let dictTwo: Dictionary<String, Int> = ["Alex": 31, "Paul": 39] //Generic Struct

//: Optional Type
var optionalOne: String?
var optionalTwo: Optional<String> //Generic Enum
