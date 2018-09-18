/*:
 
 ## Learn Swift
 ### Functional Programming
 ### Intro To Functional Paradigm
 
 **Problem:** What is functional programming
 
 */

//: > "Functional Programming is a paradigm that allows you to make your code explicit. There is no state and no mutuality"

//: ### Non-Functional Programming

//: Someware in ViewController
let numbers = [1, 2, 3]
var sum = 0
for number in numbers {
    sum += number
}

// SomeWhere in NextViewController
let newNumbers = [4, 5, 6]
var newSum = 0
for newNumber in newNumbers {
    newSum += newNumber
}

//: > **Nik's Definition:** FUnctional programming is nothing more than using functions to derive results

//: ### Functional Programming
func saveMeFromMadness(elements: [Int]) -> Int {
    var sum = 0
    for element in elements {
        sum += element
    }
    
    return sum
}


// Somewhere in ViewController
saveMeFromMadness(elements: [1, 2, 3])
// SomeWhere in NextViewcontroller
saveMeFromMadness(elements: [4, 5, 6])

/*:
 
 ### Declarative: Functional
 The user does not care about the process
 
 Ex) Jump off from an airplane vs Climb
 
 ### Imperative: Non - Functional
 It tells you how you got the answer a from A -> B.
 
 Ex) The `for-in` loop
 */


/*:
 
 ### Benefits of functional Programming
 A functional paradigm ensures no mutability or no change in state when used.
 - Modularity
 - No Explicit state management
 - Fewer lines
 - Conventional Communication
 
 */
