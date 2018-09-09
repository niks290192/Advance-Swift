/*:
 ## Learn Swift
 ### Intro To Functional Swift
 ### Lazy Init with Closures
 
 
 **Problem:** How to initializes an object with a closure?
 
 ---
 */

import UIKit

//: Unconventional Way
let box: UIView = {
    let view = UIView()
    return view
}()


//: Create UI Components
let buttonSize = CGRect(x: 0, y: 0, width: 100, height: 100)

// ViewControllerOne
let niksButton = UIButton(frame: buttonSize)
niksButton.backgroundColor = .black
niksButton.titleLabel?.text = "Nikhil"
niksButton.titleLabel?.textColor = .white

// ViewControllerTwo
let nikhilButton = UIButton(frame: buttonSize)
nikhilButton.backgroundColor = .black
nikhilButton.titleLabel?.text = "niks"
nikhilButton.titleLabel?.textColor = .white



//: Create Button with function
func createButton(enterTitle: String) -> UIButton {
    let button = UIButton(frame: buttonSize)
    button.backgroundColor = .black
    button.titleLabel?.text = enterTitle
    return button
}

createButton(enterTitle: "yoyo")

//: Introducing Unconventional Way
struct Human {
    init() {
        print("Born 1996")
    }
}

let createBob = { () -> Human in
    let human = Human()
    return human
}

let bobInstance = createBob

//: Initialize in a single line
let bobby = { () -> Human in
    let human = Human()
    return human
}()

//: Create UIView UnConventionally
let bobView = { () -> UIView in
    let view = UIView()
    view.backgroundColor = .black
    return view
}()

let bobbyView = { () -> UIView in
    let view = UIView()
    view.backgroundColor = .black
    return view
}

let newBobbyView: UIView = {
    let view = UIView()
    view.backgroundColor = .black
    return view
}()

// () -> UIView

//: ### Lazy Var

class IntenseMathProblem {
    lazy var complexNumber: Int = {
        1 * 1
    }()
}


let problem = IntenseMathProblem() // no value for complexNumber
problem.complexNumber // now, complexNumber is 1


class SortFromDataBase {
    // Data
    lazy var sortNumberFromDataBase: [Int] = {
        // Calculation and Sorting
        [1, 2, 3, 4, 5, 6, 7, 8, 9]
    }()
}

// SortFromDatBase().sortNumberFromDataBase

class CompressionManager {
    lazy var compressionImage: UIImage = {
        let image = UIImage()
        // Compress the image
        // Logic
        return image
    }()
}



/*:
 Lazy Rules:
 
 1. You can't use lazy with `let` since there is no initial value, and it is attained later when it is accessed.
 2. You can't use it with a `Computed Property` since computed property is always recalculated (requires CPU) when you modify any of the variables that has a relationship with lazy property.
 3. `Lazy` is only valid for members of the syruct or class.
 
 */
