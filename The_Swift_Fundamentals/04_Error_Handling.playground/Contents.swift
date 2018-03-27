//: Playground - noun: a place where people can play

//The Swift Fundamentals
//Intro to Error Handling

//Problem//
//1. Warn your co-workers the functions can cause dangerous results.
//2. Understanding of a 'do-try' block
//3. Distinguish between 'try?', 'try!', and 'try'
//Link :- https://learnswiftwithbob.com/course/swift-fundamentals/intro-error-handling.html

func checkHeight(height: Int){
    if height > 200 {
        print("You are going to hit your head and fall off")
        //Take him/her off from the ride
        //Code....
        //Seatbeat Tighten
    } else if height < 140 {
        print("You mmight fly in the air")
        //Take him/her off from the ride
        //Code...
    } else {
        print("Enjoy")
        //Take him/her to ride
        //Code....
    }
}

//: Problem with an else-if statement
//Problem 1: Bloated Function
// Problem 2: Modurality

//: > Error Handling is just another way to write an else-if statement to deal with error messages.
//Design Error(1/3)
enum HeightError: Error {
    case maxHeight
    case minHeight
}

// Call function (2/3)
func checkHeightError(height: Int) throws {
    if height > 200 {
        throw HeightError.maxHeight
    } else if height < 140 {
        throw HeightError.minHeight
    } else {
        print("Enjoy!")
    }
}

//Handle with error (3/3)
do {
    try checkHeightError(height: 100)
} catch HeightError.maxHeight {
    print("You are too tall")
} catch HeightError.minHeight {
    print("You are too short")
}

//: Error Handling with object initialization

//Design Error
enum NameError:Error {
    case noName
}

//Design Class
class Course {
    var name: String
    init(name: String) throws {
        if name == "" {
            throw NameError.noName
        } else {
            self.name = name
            print("Hey, You've created an object")
        }
    }
}

do {
    let myCourse = try Course(name: "Learn Swift with bob")
} catch NameError.noName {
    print("Make Sure enter your name please")
    //More Code....
}

//: Distinguish 'try?', 'try!', and 'try'

//: try?
//if error not thrown, --> optional
//if error thrown --> nil

let newCourse = try? Course(name: "")

//:try!
let myNewCourse = try! Course(name: "Nikhil Arora")

//Conclusion
/*
You've learned the Swift Error Handling syntax such as catch, do, and try. To recap, you may only use try within a do-catch block to execute a throwable method. However, you may also use try? and try! alone. Again, avoid using! in most cases since it will break your program. If you wish to review or feel stuck, I've attached an additional article for you to study as well.
In the next lesson, you will learn the final usage of ! and ? in the Swift Programming Language through type castingwhich allows you to convert types that are made up of classes and possibly with structs. 🤔 */
