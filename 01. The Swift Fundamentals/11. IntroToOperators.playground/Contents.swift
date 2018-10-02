/*:
 ## Learn Swift
 ### Chapter 1: The Swift Fundamentals
 ### Intro to Operators
 
 **Problem:** Write less, produce more
 
 ---
*/


//: ### Definition
//: > An Operator is a symbol for a function

//: Unary Operators

!true //false
!false // true


//: Binary operators
1 + 2
4 == 4
1 / 4
5 % 2

//: ### Tertiary Operators

//: Typical Else-If
let iCanDrink = false

if iCanDrink {
    print("You may enter")
} else {
    print("No no")
}

//: Tertiary Operators
iCanDrink ? print("You may enter") : print("No no")


//: Add odd.even NUmbers
var evenNumbers: [Int] = []
var oddNUmbers: [Int] = []

for number in 1...50 {
    if number % 2 == 0 {
        evenNumbers.append(number)
    } else {
        oddNUmbers.append(number)
    }
}

for number in 1...50 {
    (number % 2 == 0) ? evenNumbers.append(number) : oddNUmbers.append(number)
}

//: Unwrapping Optionals
var age: Int? = nil
var defaultAge: Int = 20

var finalUserAge = Int() //0

if age != nil {
    finalUserAge = age!
} else {
    finalUserAge = defaultAge
}

//: Nil-Coalescing Operator
finalUserAge = age ?? defaultAge
