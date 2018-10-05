/*:
 ## Learn Swift
 ### Intro To Functional Swift
 ### Intro to Closures Part 1
 
 **Problem:** Who are you closures, () -> ()?
 */
/*:
 - A closure is a function without name and the `func` keyword (for now)
 - Quick and easy to carry around as a variable/constant or just pass as a parameter
 */

//:
// Function add two ints
func addTwoNumbers(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

var addFunction = addTwoNumbers
addFunction(10, 30)

//: Closures
var addClosure: (Int, Int) -> Int = {
    (number1: Int, number2: Int) in
    return number1 + number1
}

addClosure(4, 10)

var addClosureTwo = {
    (number1: Int, number2: Int) in
    return number1 + number2
}

var addClosureThree = {
    (number1: Int, number2: Int) in
    number1 + number2
}

addClosureThree(4, 6)

var addClosureFour: (Int, Int) -> Int = { $0 + $1 }

addClosureFour(4, 5)
addClosureFour(10, 15)

//: One Example with () -> String
func callString() -> String {
    return "Hello, I'm a function"
}

let callStringwithClosure: () -> String = { () in
    print("Hello")
    return "Hello, I'm a closure"
}

callStringwithClosure()

let callStringWithClosureTwo: () -> String = { () in
    "Hello, I'm a closure"
}

// Shorted Version
let callStringWithClosureThree: () -> String = { "Hello, I'm a Closure" }
let callStringWithClosureFour: ()-> String = { "Hello, I'm a Closure" }
callStringWithClosureFour // () -> String
