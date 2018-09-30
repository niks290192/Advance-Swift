/*:
 ## Learn Swift
 ### What's new in Swift 4
 ### The Rest
 
 **Problem:** What Else?
 ---
 */

//: ### Multi-Line
//: Your Past
let multiLine = "Sentence 1\n Sentence 2\n Sentence 3\n"
print(multiLine)

//: Swift 4
let swift4Lines = """
Boom
Boom Boom
Boom Boom Boom
"""
print(swift4Lines)

//: ### One-Sided Ranges
let stringArray = ["One", "Two", "Three", "Four", "Five"]
let lessThanIndexThree = stringArray[..<3]
print(lessThanIndexThree)
let lessThanIndexFour = stringArray[...3]
print(lessThanIndexFour)

let greaterThanIndexFour = stringArray[3...]
print(greaterThanIndexFour)

//: Apply To `Switch Statements`

let age = 400
switch age {
case 0...10:
    print("child")
case 11...:
    print("Adult")
default:
    print("?")
}
