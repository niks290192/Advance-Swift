//: Playground - noun: a place where people can play

//Guard Statement

//Introduction
//Welcome to Lesson 3 of The Swift Fundamentals. When I started learing Swift for the first time, an else-if statement made sense. However, a guard statement rather seemed daunting...
//..In fact, the name doesn't tell anything about what it does. One day, however, I discovered something. A guard statement is just another for you to write an else-if statement. Aguard statement promotes zenness. In other words, it adds clarity, emptiness, and lots of cloud and space. Let us find out through the examples.

//Zenness: A trait where peace, calmness, and inner awesomeness are all intertwined

//Typical Else-If

//Without having known about guard, you have used a long else-if statement to indicate an error message block.

func checkDrinkingAge() {
    let canDrink = true
    
    
    if canDrink {
        print("You may enter")
        //More code
        //More code
        //More code
    } else {
        //More code
        //More code
        //More code
        print("Let me take you to the jail")
    }
}

//Issues with Else-If
//1. Nested brackets
//2. Have to read every line to spot error message

//Guard Statement
//A guard block only runs if the condition is false, and it will exit out of the function throught return. If the condition is true, Swift ignores the guard block, it provides an early exit and fewer brackets.

func checkDrinkingAge1() {
    let iCanDrink = true
    guard iCanDrink else {
        //if iCanDrink == false, run this block
        print("Let's me take you to the jail")
        return
    }
    
    print("You may drink")
    //you may move on
    //Come on
    //You may Leave
    //You don't need to read this.
    //Only one bracket on the bottom: feeling zen.
}


//Unwrap Optionals with Else-If
//A guard statement is not only useful for replacing a typical conditional block with an else-if statement, but also great for unwrapping optionals by minimizing the bumber of brackets. To compare. lets first begin to unwrap multiple optionals with else-if.

//First, let us create three optionals that will be unwrapped.
var publicName: String? = "Nikhil Arora"
var publicPhoto:String? = "Nikhil's Face"
var publicAge: Int? = nil

//The Wrost NightMare
//You never want to do this.

func unwrappedOneByOne() {
    if name = publicName {
        if let photo = publicPhoto {
            if let age = publicAge {
                print("Nikhil: \(name), \(photo), \(age)")
            } else {
                print("age is missing")
            }
        } else {
            print("Photo is missing")
        }
    } else {
        print("name is missing")
    }
}
//The code above certainly works but violates the DRY principle. It's atrocious. Let us break it down.
//DRY: Don't Repeat Yourself

//Slightly Better
//The code below is more readable than above

func unwrapBetter() {
    if let name = publicName {
        print("Yes Name")
    } else {
        print("No Name")
        return
    }
    
    if let photo = publicPhoto {
        print("Yes Photo")
    } else {
        print("No Photo")
        return
    }
    
    if let age = publicAge {
        print("Yes age")
    } else {
        print("No age")
        return
    }
}

//When Swift encounters return, it stops and exits out of the function immediately.

//Unwrap with Guard
//The else-if statement can be replaced with guard.

func unwrappedOneByOneGuard() {
    guard let name = publicName else {
        print("Name missing")
        return
    }
    
    guard let photo = publicPhoto else {
        print("Missing Photo")
        return
    }
    
    guard let age = publicAge else {
        print("Missing Age")
        return
    }
    
    print(name)
    print(photo)
    print(age)
}

//Unwrap multiple Optionals with Else-if
//So far, You've been unwrapping optionals one by one. Seift allows us to unwrap multiple optionals at once. if one of them contains nil, it will execute else block.

func unwrap() {
    if let name = publicName, let photo = publicPhoto, let age = publicAge {
        print("Your name is \(name). I see your face right here, \(photo), you are \(age)")
    } else {
        //if any one of those is missing
        print("Something is missing")
    }
}

//Important: Be aware that when you unwrap multiple optionals at once, you can't identify with contains nil.

//Unwrap Multiple Optionals with Guard
//Of cource, we should use guard over else-if

func unwrapWithGuard() {
    guard let name = publicName, let photo = publicPhoto, let age = publicAge else {
        //if one or two of the variables contain "nil"
        print("Something is missing")
        return
    }
    
    print("Your name is \(name). I see your, \(photo). You are\(age)")
    //Animation Logic
    //Networking
    //More COde, But Still Zen
}

//Defer Statement
//Defer Statement: Put off(an action or event) to a later time; postpone
//A Defer Block only executes only after current scope (loop, method etc) exits.

func simpleDefer() {
    defer { print("Chill, Later") }
    print("Print First")
}

//Let us execute the simpleDefer() function.

simpleDefer()
//"Print First"
//"Chill, later"

//Another example
for i in 1...3 {
    defer { print("Deferred \(i)") }
    print("First \(i)")
}

//First 1
//Deferred 1
//First 2
//Deferred 2
//First 3
//Deferred 3

//Usage Care for defer
//1. Executing completion handler blocks which you will learn in Chapter 3
//Anycode you want to explicitly inform your team without requiring them to read the entire function.

//Conclusion

//In this lesson, you've learned the power of guard over typical else-if. First, it provides an early exit. Second, no one has to read the entire function to spot the error messages. You use a guard statement not just to please yourself, but for the sake of your teammates falling hair when he/she reads your code. Keep guarding, everyone. Don't defer your learning, however.
