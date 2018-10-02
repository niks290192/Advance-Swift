/*:
 ## Learn Swift
 ### Chapter 1: The Swift Fundamentals
 ### Set and Tuple
 
 **Problem:**
 1. I'd love to eliminate duplicate items(set).
 2. I'd love to combine all kinds of type.
 ---
*/
//: ## Introducing Sets
//: A set stores values of a same type in a collection with **no defined ordering** and **no duplicate elements.**

//: Multiple ways to create arrays
var arrayOne: [Double] = [] // 👍
var arrayTwo = [Double]()

var arrayThree: Array<Double> = []
var arrayFour: Array<Double> = Array()
var arrayFive = Array([1123.08, 234.23])

var arraySix = Array(1...100)
var arraySeven = Array(repeatElement("Nikhil", count: 10))

//: Multiple Ways to create Sets
var setOne: Set = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 1, 1]
var setTwo: Set<String> = ["Niks", "Nikhil", "Nikhil Arora"]
var setThree = Set<String>()
var setFour = Set(["Niks", "Nikhil", "NiksAr"]) //👍

//: Build-in Set Methods
setThree.insert("NiKs")
setThree.contains("NiKs") //true
setThree.remove("NiKs")

//: Generate odd and Even numbers
var oddNumbers: [Int] = []
var evenNumbers: [Int] = []

for number in 1...50 {
    if number % 2 == 0 {
        evenNumbers.append(number)
    } else {
        oddNumbers.append(number)
    }
}

//: Tertiary Operator
//for number in 1...50 {
// (number % 2 == 0) ? evenNumber.append(number) : oddNumber.append(number)
//}

oddNumbers
evenNumbers

//: Convert array<Int> or [Int] to Set<Int>

var oddNumberSet = Set(oddNumbers)
let evenNumberSet = Set(evenNumbers)

//: Union
print(oddNumberSet.union(evenNumberSet))

//: SymmetricalDifference
oddNumberSet.symmetricDifference(evenNumberSet)

//: Intersection
oddNumberSet.intersection(evenNumberSet)

//: Subtraction
oddNumberSet.subtract(evenNumberSet)

var numberSet = Set([1, 2,  3])
let secondNumberSet = Set([1, 2])

numberSet.subtract(secondNumberSet)
print(numberSet)

//: Filter/Sort
// Convert Sets to sorted Array

let sortedArray = evenNumberSet.sorted()

// Functional Programming
let sortedArrayFromHighToLow = evenNumberSet.sorted{ $0 > $1 }
print(sortedArrayFromHighToLow)

//: Practical Usage of Set
// 1. Finding unique letters.
// 2. Finding unique visitors.
// 3. Any game logic.

//: ### Introducing Tuple

let firstScore = (name: "Nikhil", score: 9)
firstScore.1
firstScore.0

firstScore.name
firstScore.score

let secondScore = ("Niks", 10)
secondScore.0
secondScore.1

//: Practical Usage
let httpSuccess = (code: 200, description: "success")
httpSuccess.code

let httpFailure: [Any] = [401, "Fail"]

//: Bonus Tips

//Okay
var dogs = "dog", cat = "cat"
print(dogs)

//Better
var (x, y, z) = (1, 2, 3)
print(x)
print(y)

var shoppingList = ["Eggs", "Milk", "Rice"]

for (index, value) in shoppingList.enumerated() {
    print(index, value)
}

// enumerated turns into a tuple
