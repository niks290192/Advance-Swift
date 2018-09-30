/*:
 ## Learn Swift
 ### What's new in Swift
 ### Advance Dictionary
 
 **Problem:** Functional programming met Swift Dictionary
 ---
 */

//: Default Value
//: Your Past
var myInfo = ["name": "Nikhil Arora", "age": "26"]
let name = myInfo["name"] // Optional("Nikhil Arora")

//: Default Value for Dictionary
let footSize = myInfo["footSize", default: "No Value"]
let myName = myInfo["name", default: "No Value"] //"Name"

//: **Practical Usage**: Everywhere for accessing dictionary value

//: ## Grouping a `sequence` into a dictionary
let contacts = ["A", "B", "C", "D", "E", "F"]
let grouped = Dictionary(grouping: contacts, by: { $0.first! })
print(grouped)

let duplicates = [("a", 1), ("b", 7), ("a", 3), ("b", 10)]
let myLetter = Dictionary(duplicates, uniquingKeysWith: { (letter, number) in letter })
print(myLetter)

//: ### Zip: (Dictionary Like)
let words = ["one", "two", "three", "four"]
let numbers = 1...words.count

for (word, number) in zip(words, numbers) {
    print("\(word): \(number)")
}
// Prints "one: 1"
// Prints "two: 2"
// Prints "Three: 3"
// Prints "Four: 4"

//: Zip to Dictionary
let friends = ["A", "B", "C"]
let friendsWithValue = Dictionary(uniqueKeysWithValues: zip(1..., friends))

//: ### Functional Programming with Set
let set: Set = [1, 2, 3, 4, 5]
let filteredSet = set.filter{ $0 % 2 == 0} // Returns Set
type(of: filteredSet)

//: ### Functional programming of Dictionary
let dictionary = ["name": "Nikhil", "age": "26", "hairColor": "Black"]

let filtered = dictionary.filter {
    $0.key == "name"
}

print(filteredSet)

let mapped = dictionary.mapValues { value in
    value.uppercased()
}

print(mapped)
