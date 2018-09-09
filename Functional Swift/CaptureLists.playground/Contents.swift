/*:
 ## Learn Swift
 ### Intro to Functional Swift
 ### Swift Capture Lists
 */


var a = 0
var b = 0

//: Design Closures
let newClosure = { print(a, b) }
newClosure() // (0, 0)

//: Design Closures Array
var closuresArray: [() -> ()] = []
var i = 0

//: Append Closures
for _ in 1...5 {
    closuresArray.append {
        print(i)
    }
    i += 1
}

//i = 5

closuresArray[0]() // 5 😯
closuresArray[1]() // 5 🤔
closuresArray[2]() // 5 😨
closuresArray[3]() // 5 😭
closuresArray[4]() // 5 😱

//: Characteristic of closure: **Reference Type**
var c = 0
var d = 0

let smartClosure: () -> () = { _ in
    print(c, d)
}

c = 9
d = 9

smartClosure() //(9, 9)

//: ### Capture List
//: > Don't Reference, Copy
let smarterClosure: () -> () = { [c, d] in
    print(c, d)
}

smarterClosure() // (9, 9)

c = 10
d = 10

smarterClosure // (9, 9)

//: Design Closure Array
var smartClosureArray: [() -> ()] = []
var j = 0

//: Append Closure
for _ in 1...5 {
    smartClosureArray.append { [num = j] in
        print(num)
    }
    j += 1
}

smartClosureArray[0]() // 0 ☝🏻
smartClosureArray[1]() // 1 💪🏻
smartClosureArray[2]() // 2 🎁
smartClosureArray[3]() // 3 🎉
smartClosureArray[4]() // 4 👳🏻‍♀️


