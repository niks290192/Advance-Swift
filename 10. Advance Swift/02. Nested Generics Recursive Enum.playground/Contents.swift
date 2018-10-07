/*:
 ## Learn Swift
 ### Advance Swift
 ### Advance Operators
 
 **Problem:** Learn how to create custom operators
 ---
 */

//: Inout
//: > Function parameters are constants by default.
func enterSomething(_ a: inout Int) {
    a += 1
    print(a)
}

var number = 10
enterSomething(&number)


//: ### Design Prefix and Postfix operators
//: Prefix
import Foundation

// Ex)
!true

prefix operator √

prefix func √(number: Double) -> Double {
    return sqrt(number)
}

√100000
√10000234234

prefix operator ©
prefix func ©(enterWord: String) -> String {
    return "\(enterWord)"
}

©("Niks the Developer")

//: opt-g

//: Postfix
// Ex)

let myName: String? = "Niks"
myName!

postfix operator =!

postfix func =!(value: String?) -> String {
    guard let unwrappedValue = value else {
        return ""
    }
    return unwrappedValue
}

myName!

postfix operator %%
postfix func %%(enterNumber: Int) -> String {
    return enterNumber & 2 == 0 ? "Even": "Odd"
}

Int(arc4random())%%

//: ### Infix
/*:
 - BitwiseShiftPrecedence { precedence 160 }: <<, >>
 - MultiplicationPrecedence { associativity left precedence 150 }: *, /, %, &
 - AdditionPrecedence { associativity left precedence 140 }: +, -
 - RangeFormationPrecedence { precedence 135 }: ..<, ...
 - CastingPrecedence { precedence 132 }: is, as
 - ComparisonPrecedence { precedence 130 }: <, <=, ==, !=, ===
 - LogicalConjunctionPrecedence { associativity left precedence 120 }: &&
 - LogicalDisjunctionPrecedence { associativity left precedence 110 }: ||
 - NilCoalescingPrecedence { associativity right precedence 110 }: ??
 - TernaryPrecedence Conditional { associativity right precedence 100 }: ?:
 - AssignmentPrecedence { associativity right precedence 90 }¯: =, *=, /=, +=
 
 */

3 * 2 + 4

//: Old Method 
infix operator ** { associativity left precedence 130 }


func **(left: Double, right: Double) -> Double {
    return pow(left, right)
}

2 ** 3
2 ** 10

//: > Swift 3.0
precedencegroup CustomOperatorPrecendence {
    higherThan: AdditionPrecedence
    lowerThan: MultiplicationPrecedence
    associativity: left
}

infix operator ????: CustomOperatorPrecendence

//: Random Number Generation 
func ???? (left: UInt32, right: UInt32) -> Double {
    let lower: UInt32 = left
    let upper: UInt32 = right
    let randomNumber = arc4random_uniform(upper - lower) + lower
    return Double(randomNumber)
}

1 ???? 10
1 ???? 123234324

//: Overloading 
// "a" * 10
// "aaaaaaaaa"

func * (left: String, right: Int) -> String {
    guard right >= 0 else {
        print("Make sure enter number higher 0")
        return ""
    }

    var result = String()
    for _ in 1..<right {
        result += left
    }

    return result
}

"Niks" * 10

// [1, 2] + [3, 4] // [4.0, 6.0]

func +(left: [Double], right: [Double]) -> [Double] {
    var sum = [Double](repeatElement(0.0, count: left.count))

    print(left.enumerated()) 
    for(i, _) in left.enumerated() {
        sum[i] = left[i] + right[i]
    }

    return sum
}