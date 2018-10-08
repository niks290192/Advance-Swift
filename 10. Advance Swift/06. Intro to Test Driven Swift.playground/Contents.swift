/*:
## Learn Swift
### Advance Swift
### Intro to Test Driven Swift

**Problem:** Learn how to create safe apps
---
*/


//: Test Driven Development
// -0none      // none a.k.a debug
// -0          // fast a.k.a release
// -0unchecked // super fast testing

/*:

Standard Swift Library come with five assertion functions
1. assert()
2. assertFailure()
3. precondition()
4. preconditionFailure()
5. fatalError()
*/

//: assert()
assert(true)

func enterName(name: String) {
    if name == "" {
        assert(false, "You must enter a full name")
    } else if name == "Niks" {
        assert(false, "There is only one Niks")
    }
}

// enterName(name: "Niks")

print("File: \(#file)")
print("Line: \(#line)")


var expectedResult = 10
var actualResult = 10

assert(actualResult = expectedResult, "The Actual result doesn't match with the expected")

//: assertFailure()
import Foundation
let randomNumber: Int = Int(arc4random_uniform(3))

switch randomNumber {
case 0, 1, 2:
    print(randomNumber)
default:
    assertFailure("Unexpected index \(randomNumber)")
}

//: PreCondition()
// Identical as assert()
let expecetdNumber = (1, 3)
let actualNumber = (1, 3)

precondition(actualNumber == expecetdNumber, "\(actualNumber) is not the same as \(expecetdNumber)")

//: PrecondtionFailure()
// preconditionFailure("Good")

//: fatalError()
let number: Int = Int(arc4random_uniform(100))

func enterNumberReturnString(index: Int) -> String {
    switch index {
        case 0, 1, 2:
        return "\(number)"
        default:
        //assertionFailure("Unexpecetd index \(number)")
        // abort()
        fatalError("Unexpected index \(number)")
    }
}


//: > @noreturn, the compiler confirms that the marked function will not return. The application would terminate instead.