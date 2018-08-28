/*:
## Learn Swift
### Chapter 1: The Swift Fundamentals
### Optionals

**Problem:** Why do optionals exist?

#### Rules 
1. Every variable type must be defined (Implicit/Explicit)
2. The type is inferred based on the value
---
*/
//: Implicit and Explicit Type
let name: String = "Nikhil"          //Explicit
let newName = "Nikhil the Developer" //Implicit

let myAge: Int = 20                  //Explicit
let mySisterAge = 14                 //Implicit
let myGPA: Double = 3.54             //Explicit

//: Fetching Profile Picture 
// If could return "URL" or "Nothing"
let myFace = "https://....."

//: Introducing Optionals 
// Optionals type allows storing nil
let myName: String? = nil
let yourName: String? = "Nikhil Arora"

let nikhilAge: Int? = nil
let nikAge: Int? = 123
let niksAge: Int? = 3

// nikAge + niksAge
let yourAge = 100

/*:
 Optional Rules:
 1. Optionals do not interact with each other
 2. Convert Optionals to normal types, the process known as *unwrapping
*/
//: ### Optional Unwrapping
//: Forced Unwrapping
let newNikAge = nikAge!
let newNiksAge = niksAge!

// Problem

var image: String? = nil

// let normalImage = image! // let normalImage = nil
// print(normalImage)

//: Implicit Unwrapping
// Conditional Statement
let imageFromFacebook: String? = "Nikhil's Face"

if let normalImage = imageFromFacebook {
    print(normalImage)
} else {
    print("There is no Image")
}
