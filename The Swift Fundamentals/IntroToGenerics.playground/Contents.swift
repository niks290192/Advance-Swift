/*:
 
 ## Learn Swift
 ### Chapter 1: The Swift Fundamentals
 ### Intro to Generics
 
 **Problem:** I smell Something
 
 ---
 */
let highSchoolIGPA = [2.8, 3.2, 3.5, 3.8, 3.5]
let favoritePeople = ["Elon Musk, Steve Jobs, Kevin O'leary"]
let favoriteNumbers = [3, 20]

//: Worst
highSchoolIGPA[0]
highSchoolIGPA[1]
highSchoolIGPA[2]

//: Typical Solution
func printDoubleElement(array: [Double]) {
    for GPA in array {
        print(GPA)
    }
}

func printStringElement(array: [String]) {
    for person in array {
        print("I Love \(person)")
    }
}

func printNumberElement(array: [Int]) {
    for number in array {
        print("I Love \(number)")
    }
}

//: Introducing Generics
func genericsFunction<anything>(value: anything) {
    print(value)
}

func genericsFunctions<T>(value: T) {
    print(value)
}

genericsFunction(value: "Nikhil")
genericsFunction(value: true)

func printElement<T>(array: [T]) {
    for element in array {
        print(element)
    }
}

printElement(array: highSchoolIGPA)
printElement(array: favoritePeople)

//: > Generic code enables you to write flexible, reusable functions and types that can work with any type, Subject to requirements that you define.

//: Struct Met Generics
// Non-generics code

struct Family {
    //var members = [String]()
    var members: [String] = []
    
    mutating func push(member: String) {
        members.append(member)
    }
}

var myFam = Family()
myFam.push(member: "Nikhil")
myFam.members

struct GenericsFam<T> {
    var members: [T] = []
    mutating func push(member: T){
        members.append(member)
    }
}

//: Generics Initialization
var genericsFamily = GenericsFam<Int>()
var genericsFamily2 = GenericsFam<String>()

genericsFamily2.members

//: Implicitly Determined
let myHappyFamily = GenericsFam(members: [1, 2, 3, 4, 5])

//: Generic Extension

extension GenericsFam {
    var firstElement: T? {
        if members.isEmpty {
            return nil
        } else {
            return members[0]
        }
    }
}

let geekFamilyMember = GenericsFam(members: ["Nikhil", "Arora"])
geekFamilyMember.firstElement

//: Type Constraint

class LOL { }

class BabyLol: LOL {}

func addLOLClassOnly<T: LOL>(array: [T]) {}

addLOLClassOnly(array: [LOL(), LOL(), LOL(), BabyLol()])
[1, 2, 3, 4, 5] //Array is a generic struct
