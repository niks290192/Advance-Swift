/*:
 ## Learn Swift
 ### Chapter 1: The Swift Fundamentals
 ### Intro to Error Handling
 
 **Problem:**
 1. Warn your co-workers the function can cause *dangerous results*.
 2. Understanding of a 'do-try' block.
 3. Distinguish between 'try?', 'try!', and 'try'

 ---
*/

func checkHeight(height: Int) {
    if height > 200 {
        print("You are going to hit your head and fall off")
        //Take him/her off the ride
        // Code....
        // Seatbeat Tighten
    } else if height < 140 {
        print("You might fly in the air")
        //Take him/her off from the ride
        //Code.....
    } else {
        print("Enjoy")
        //Take him/her to ride
        // Code...
    }
}
//: Problem with else-if statement
//Problem 1: Bloated Function
// Problem 2: Modurality

//: > Error Handling is just another way to write an else-if statement to deal with error messages
// Design Error

enum HeightError: Error {
    case maxHeight
    case minHeight
}

// Call Function
func checkHeightError(height: Int) throws {
    if height > 200 {
        throw HeightError.maxHeight
    } else if height < 140 {
        throw HeightError.minHeight
    } else {
        print("Enjoy Your ride")
    }
}

// Handle with Error
do {
    try checkHeightError(height: 150)
} catch HeightError.maxHeight {
    print("Please get out of here")
} catch HeightError.minHeight {
    print("To Short to ride")
}

//: Error Handling with Object Initialization

// Design Error
enum NameError: Error {
    case noName
}

// Design Class
class Course {
    var name: String
    
    init(name: String) throws {
        if name == "" {
            throw NameError.noName
        } else {
            self.name = name
            print("You've created the object right")
        }
    }
}

// Initalize and handle Error
do {
    let myCourse = try Course(name: "")
} catch NameError.noName {
    print("Error: Please make sure enter name")
    //More Code
}

//: Distingush 'try?', 'try!', and 'try'

//: try?
// if error not thrown, --> optional
// if error thrown --> nil

let newCourse = try? Course(name: "Nikhil the Dev")
if let myCourse = newCourse {
    print(myCourse.name)
}

let newDopeCourse = try? Course(name: "")

//: try!
let myNewCourse = try! Course(name: "Nikhil Arora")
// let myDropNewCourse = try! Course(name: "")
