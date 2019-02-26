/*:

 ## Learn Swift
 ### Protocol Oriented Swift
 ### Protocol Extension
 
 **Problem:** I don't even want to type anymore.
 
 ---
 */

protocol MathGenius {
    func calculateGPA()
}

extension MathGenius {
    func calculateGPA() {
        print("I'm too cool for skool")
    }
}

struct NiKS: MathGenius {
    func calculateGPA() {
        print("1.2 GPA")
    }
}

NiKS().calculateGPA() // 1.2 GPA

class Nikhil: MathGenius {}
Nikhil().calculateGPA()


//: Practical Protocol Extension
protocol FindAreable {
    func calculateArea(side: Double, length: Double) -> String
}

extension FindAreable {
    func calculateArea(side: Double, length: Double) -> String {
        let area = String(side * length)
        return "The area is \(area)"
    }
}

struct Square: FindAreable { }
struct Hexagon: FindAreable { }

Square().calculateArea(side: 4, length: 4)
Hexagon.init().calculateArea(side: 6, length: 10)


//: Usage Case
//: 1. UILabel, UIImageView, UIView --> Animation
//: 2. Storyboard Identifier
//: 3. Reusable table and collectionView Cells.

