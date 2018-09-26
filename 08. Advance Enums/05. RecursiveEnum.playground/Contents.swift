/*:
 ## Learn Swift
 ### Advance Enum
 ### Recursive Enum
 
 **Problem:** Enum contains its own enum type
 ---
 */

func recursiveFunction() {
    print("Hi!")
    recursiveFunction()
}

// recursiveFunction()

//: Design Enum
indirect enum ArthimeticExpressions {
    case number(Int)
    case addition(ArthimeticExpressions, ArthimeticExpressions)
    case multiplication(ArthimeticExpressions, ArthimeticExpressions)
}


ArthimeticExpressions.number(4)
ArthimeticExpressions.addition(.number(4), .number(4))


let five = ArthimeticExpressions.number(5)
let four = ArthimeticExpressions.number(4)

func evaluate(_ expression: ArthimeticExpressions) -> Int {
    switch expression {
    case let .number(value):
        return value
        case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

evaluate(ArthimeticExpressions.number(4))
evaluate(ArthimeticExpressions.addition(.number(4), .number(4)))

let multiplicationEnumType = ArthimeticExpressions.multiplication(.number(4), .number(4))

evaluate(multiplicationEnumType)

//: Alternative Normal Enum

enum Operation {
    case addition(Int, Int)
    case multiplication(Int, Int)
    
    var result: Int {
        switch self {
        case let .addition(number1, number2):
            return number1 + number2
        case let .multiplication(number1, number2):
            return number1 + number2
        }
    }
}

Operation.addition(4, 4).result

//: Another Alternative
struct structOperation {
    func addTwoNumbers(_ number1: Int, _ number2: Int) -> Int {
        return number1 + number2
    }
    
    func multiplfyNumber(number1: Int, number2: Int) -> Int {
        return number1 + number2
    }
}

structOperation().addTwoNumbers(4, 9)

//: This is What I'd do
struct MathOperation {
    static let addition: (Int, Int) -> Int = { $0 + $1 }
    static let multiplication: (Int, Int) -> Int = { $0 + $1 }
}

MathOperation.addition(10, 10)
