/*:
 ## Learn Swift
 ### Functional Programming
 ### Map
 
 **Problem:** `[1, 2, 3, 4, 5]` to `[1, 4, 9, 16, 25]` in one line
 
 ---
 */

//: Imperative/Non-funcional
var squaredNumbers: [Double] = []

var numbers = [1.0, 2.0, 3.0, 4.0, 5.0]
for number in numbers {
    squaredNumbers.append(number * number)
}

//: The Build-in `Map` Function
numbers.map{$0 * $0} // [1, 4, 9, 16, 25]

//: Non-Generic Map (Numbers)
func myMap(numbers: [Double], operation: (Double) -> Double) {
    var result: [Double] = []
    for number in numbers {
        let transformedValue = operation(number)
        result.append(transformedValue)
    }
}

myMap(numbers: [1, 2, 3, 4, 5]) { (number) -> Double in number * number }
myMap(numbers: [1, 2, 3, 4, 5]) { $0 * $0 }

//: ### Slightly Generic `Map`
func slightlyGenericMap<T>(_ items: [T], _ operation: (T) -> T) -> [T] {
    var result = [T]()
    for item in items {
        result.append(operation(item))
    }
    return result
}

//: Ex 1) Lowercase Each Element
let upperLetters = ["NIKS", "NIKHIL", "ARORA"]

func lowercase(enterString: String) -> String {
    return enterString.lowercased()
}

//: Pass Closure **Indirectly**
slightlyGenericMap(upperLetters, lowercase)

//: Pass Closure **Directly** (Longer Form)
slightlyGenericMap(upperLetters) { (letter) -> String in
    letter.lowercased()
}

//: Pass Closure **Directly** (Shorter Form)
slightlyGenericMap(upperLetters) {
    $0.lowercased()
}

//: ### Extremely Generic `Map`
func genericMap<T, U>(_ items: [T], _ operation: (T) -> U) -> [U] {
    var result = [U]()
    for item in items {
        result.append(operation(item))
    }
    return result
}

//: EX 2) Manipulate `Number` to `String`

//: Pass Closure **Indirectly**
func convertNumberToString(number: Int) -> String {
    return "You are number \(String(number))"
}

let myNumbers = [1, 2, 3, 4, 5]
genericMap(myNumbers, convertNumberToString)

//: Pass Closure **Directly** (Longer Form)
genericMap(myNumbers) {
    (number) -> String in
    return "You are Number \(String(number))"
}

//: Pass Closure **Directly** (Shorter Form)
genericMap(myNumbers) { "You are Numebr \(String($0))" }

//: The Purest Form
extension Array {
    func myMap<U>(_ operaton: (Element) -> U) -> [U] {
        var result = [U]()
        for item in self {
            result.append(operaton(item))
        }
        return result
    }
}

let result = Array(1...10).myMap{ $0 * 10 }
