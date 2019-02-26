/*:
 ## Learn Swift
 ### Object Oriented Swift
 ### Convenience Init
 
 **Problem:** I'm Lazy. Can we initialize quickly?
 ---
 */

class Human {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    //Convenience init intializes the designated init method
    convenience init() {
        self.init(name: "Nikhil Arora")
    }
}

let lee = Human.init(name: "Nikhil Arora") //init(name: String)
let NiKS = Human()

/*
 
 Real Life Situations
 
 */

import UIKit

let randomColor = UIColor(red: 255.0/80.0, green: 80.0/255.0, blue: 85.0/255.0, alpha: 1.0)

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
    }
}

let myFavoriteColor = UIColor(r: 255, g: 80, b: 85)

//: Application
//: 1. Useful for quick Initialization for open source projects.
//: 2. Custom Convenience like UIKit
