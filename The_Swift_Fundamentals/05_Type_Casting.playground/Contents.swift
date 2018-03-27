//: Playground - noun: a place where people can play

//Type Casting

//https://youtu.be/ZIfcIfyMDgs

//Introduction
//Welcome to lesson 5 of the Swift Funcdamentals with Bob. You've learned a number of ! and ? since Lesson 1. These are language features that distinguish Swift from rest, and you've got to know all, when, where, how, and, most importantly, Why.all
// In this lession, you learn to convert types in objects that are created with classes and structs. In fact, if you use Storyboard in iOS, you must Know type casting.

//Problem
//1. How do you distinguish between as, as?, as! ?
//2. Why does Xcode keep telling me what to do?

//https://learnswiftwithbob.com/course/assets/uikit-framework-hierarchy.png

//Type Casting in UIKit

//You might have seen,

import UIKit

let label = UILabel() as UIView

//You've converted UILabel to UIView. UILabel is a subclass of UIView. Let us attempt to replicate the phenomenon with custom classes.


//Human Class
//Design a class called Human that contains a single method.

class Human {
    func introduce() {
        print("Hi, I'm a human")
    }
}

//Human SubClass
//Design Korean and Japanese which inherit from the Human class.

class Korean:Human {
    func singGangNamStyle() {
        print("Oppa Gangnam Style")
    }
}

class Japanese: Human {
    func doNinja(){
        print("Shhhh......")
    }
}

//Check if all good
let nikhil = Korean()
nikhil.introduce()
nikhil.singGangNamStyle()


//Type Casting

//You may convert Korean to human vice Versa. There are two ways: Upcasting and Downcasting.

//Upcasting
//Upcasting occurs when an object converts its type to the base class. In the early above, you've upcasted UILabel to UIView using as.

//The word "up" aligns with the structure in the graph above.

let newNikhil = nikhil as Human // Korean --> Human
newNikhil.introduce()
newNikhil.singGangNamStyle() // Does Not exists.

//Upcasting Example in Swift Struct

var name = "Nikhil" as Any
var number = 20 as Any
var anyArray = [name,number] // [Any]

//I forgot to mention that Int and String as struct types which lack base classes. However, struct may only 'upcast' to Any.


//DownCasting
// Downcasting is the opposite. You may downcast any to String. However, it may fail since Any cound contains many types. Analogous to Optionals, there are two ways to downcast: Force downcasting or Implicit downcasting.

//Force Downcasting
// It does not return an optional type. But if fails, it crashes.

//Force Downcasting
let newValue = anyArray[0] as! String
let newValue1 = anyArray[1] as! String

//Downcasting is only available only after upcasting.

//Implicit Downcasting
//It returns an optional type. If it fails, it returns nil.
let newValue2 = anyArray[0] as? Int
print(newValue2) //Optional(20)


//Type Casting In Practice

// Create Instance

let shion = Japanese()
let lee = Korean()
let kenji = Japanese()
let park = Korean()

//Create Array Using Upcasting
let humans: [Human] = [shion as Human, lee as Human, kenji as Human, park as Human]

//Automatic upcasting
let newHumans: [Human] = [shion,lee, kenji, park]
let newNewHumans = [shion,lee,kenji,park]

//Loop

for human in humans {
    if let korean = human as? Korean {
        korean.singGangNamStyle()
    }
}

//Usage in iOS Development
//TypeCasting can be used to group UI components and add attributes as a whole.
let loginButton = UIButton()
let loginMessage = UILabel()
let loginView = UIView()

let UIComponents = [loginButton, loginMessage, loginView]

for component in UIComponents {
    if let button = component as? UIButton {
        // Change background color
        //Add Title
        // ...
    }
    
    if let label = component as? UILabel { }
    if  let view = component as? UIView {  }
}

//Another Example
//TO fetch a view Controller from StoryBoard, downcast to identify the designated veiw controller.

let storyboard = UIStoryboard(name: "Main", bundle: nil)
let vc = storyboard InstantiateViewController(withIdentifier: "VC") //type of vc  = UIViewController
let vc = storyboard InstantiateViewController(withIdentifier: "VC") as! //type of vc = VC

//Conclusion

//I lied. I said type casting allowed to convert types in classes. However, you may also convert Int and String to Any even through they are made up of struc, not classes.
//Unnessary type casting is not recommended among iOS Developers beacuse it causes a massive headace from casting back and forth. There is an alternative to go about. 
