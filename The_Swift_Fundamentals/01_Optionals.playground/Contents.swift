//: Playground - noun: a place where people can play

//: Problem
// Why Do Swift Engineers implement Optionals

//: Swift Rules
// 1. Every variable type must be defined(Implicit/Explicit)
// 2. The type is inferred based on the value

// String
let name: String = "Nikhil" //Explicit
let newName = "Nikhil the Developer" //Implicit

//Number
let myAge: Int = 20 //Explicit
let mySisterAge = 14 //Implicit
let myGPA: Double = 3.54 //Explicit

//Fetching Profile Picture

//When you fetch a profile picture from Facebook, it may return no value, a.k.a nil, However, you may not store nil to normal type based on the rule above.

//Successful
let myProfileImageURL:String = "https://faceboook.com/nikhil290192"

//Error
let myProfilePictureURL: String = nil

//Introduction to Optionals 

//Optionals allow storing nil, a.k.a absence of value.

let myName:String? = nil
let yourName: String? = "Bob Lee"

print(myName) //nil
print(yourName) //Optional("Bob Lee")

let bobAge: Int? = nil
let robAge: Int? = 123
let danAge: Int? = 3

//Optionals Rules

//1. Optionals/Normals Types do not interact with each other.
//2. Convert Optionals to Normal Types for usage. The process is also known as unwrapping.

robAge + danAge
//Error


//Optionals Unwrapping 
//There are two ways to convert/unwrap optionals types to normal types
// 1.Forced unwrapping
// 2. Implicit unwrapping

//Forced Unwrapping 
//You may convert by Inserting ! at the end of the variable. Forced Unwrapping should be avoided since it causes a crash if the optional type contains nil since a normal type can't store nil.

let newRobAge = robAge!
print(newRobAge) //normal type
let newDanAge = danAge!
print(newDanAge)//normal type

//Problem
var image: String? = nil

//Now, let us force unwrap image.
var image! // Error
//It does not work because you are not allow to store nil to a normal type. Again, unwrapping refers to the process of converting from an optional type to a normal type.
//You can't store nil to a normal type in swift. It violates the Swift Rule.

//Implicit Unwrapping
//Implicit unwrapping is a safe way to convert. if the optional type contains nil, it does not break the system. Instead, it ignores. Implicit unwrapping is an added feature to an else-if statement.

let imageFromFaceBook: String? = "Bob's Face"

if let normalImage = imageFromFaceBook {
    print(normalImage)
} else {
    print("There is no image")
}

//Now normalImage contains a normal type of String. You may use the normalImage constant within the if block. On the contaray, if imageFromFaceBook contains nil, Swift executes the else block instead.

//Conclusion
//You've learned two fundamental concepts in the Swift Programming Language. The rule number one states, every type, even if optionals, has to be defined explicitly or implicitly.
//Second, there are two ways to unwrap optionals to normal Types. You may force unwrap with ! of safetly unwrap with if-let.

//In the next lesson, you will learn why ? and ! automatically appear when you create an object and access its properties and methods.