/*:
 
 ## Learn Swift
 ### Functional Swift
 ### Trailing Closuers
 
 **Problem:** A Closure is too long to pass through a function
 ---
 */

//: Design Function
func trailingClosure(num: Int, closure: () -> Void) {
    print("You've entered \(num)")
    closure()
}


//: Design Closure block
func helloFunc() -> Void {
    print("Hello, Function!")
}
helloFunc


let helloClosure = {
    print("Hello, Closure")
}

//: Execute Function

trailingClosure(num: 100, closure: helloFunc)
trailingClosure(num: 100, closure: helloClosure)

trailingClosure(num: 100, closure: { print("Hello!!!") })
trailingClosure(num: 100) {
    print("Hello!!!")
}

//: When to use Trailing Closure
//: - A single closure block at the end

//: Another Example
func trailingClosures(number: Int, closure: (Int) -> Int) {
    let newNumber = closure(number)
    print(newNumber)
}

trailingClosures(number: 1000, closure: { number in number * number })

trailingClosures(number: 500) { number in number * number }
trailingClosures(number: 400) {$0 * $0}

