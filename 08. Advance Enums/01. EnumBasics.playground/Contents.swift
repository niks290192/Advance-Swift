/*:
 ## Learn Swift
 ### Advance Enums
 ### The Enum Basics
 
 **Problem:** Let's Review
 ---
 */

/*:
 There are three types of enumeration:
 1. Basic Enumerations
 2. Enumerations that have Raw Values
 3. Enumerations that have Associated Values
 */

//: ### Basic Enumerations
enum Compass {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let earth = Planet.earth

switch earth {
case .earth:
    print("Mostly Safe")
default:
    print("Not a Safe place for me")
}

/*:
 ### Raw Value
 Swift supports the following types for the value of an enum:
 - Integer
 - Float
 - String
 - Bool
*/

//: Raw Value: String

enum Food: String {
    case pizza
    case banana
    case chicken
    case bigMac
}

let stringValueFromPizza = Food.pizza.rawValue

//: Raw Value: Int
enum Days: Int {
    case mon, tue, wed, thu, fri = 10, sat, sun
}
// mon =  0, tue = 1, wed = 2, .... fri = 10, sat = 11

let myDay = Days.fri
print(myDay)


//: Initialization from Raw Value
let possibleeDay = Days(rawValue: 10)
print(possibleeDay!)

if let someDay = Days(rawValue: 3) {
    switch someDay {
    case .sat, .sun:
            print("Weekends!!")
    default:
        print("Weekdays!!")
    }
} else {
    print("No Such day exists")
}

/*:
 ### Associated Value
 Example from the swift Doc
 */

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var qrCode = Barcode.qrCode("XYZ")
var upcCode = Barcode.upc(4, 2, 5, 5)

//: Validation
if case let Barcode.qrCode(value) = qrCode {
    print("This is a qrCode")
    print(value)
}

if case let Barcode.upc(numberSystem, manufacturer, product, check) = upcCode {
    print("Numbser System:", numberSystem)
    print("manufacturer:", manufacturer)
    print("product:", product)
    print("check:", check)
}

//: Validation with Switch Statement
let code = upcCode

switch code {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

switch code {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}



