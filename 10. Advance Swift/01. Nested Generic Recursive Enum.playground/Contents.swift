/*:
 ## Learn Swift with bob
 ### Advance Swift
 ### Nested Generics and Recursive Enum
 
 **Problem:**
 1. Learn how to create nested generic enum
 2. Learn more about recursive enum with binary tree.
 ---
 */

//: ### Nested Generics
//: Before Swift 3.1

//: Design Generic Enums
enum Gadget<T> {
    case smartphone
    case laptop
    case fridge
    case others(T)
}

enum Company<T> {
    case Samsumg
    case Apple
    case Sony
    case others(T)
}

//: Design Struct
struct Product<T> {
    let company: Company<T>
    let gadget: Gadget<T>
    let review: [T]
    
    init(enterCompany: Company<T>, enterGadget: Gadget<T>, enterReview: [T]) {
        company = enterCompany
        gadget = enterGadget
        review = enterReview
    }
}

let myProduct = Product(enterCompany: .Apple, enterGadget: .fridge, enterReview: ["Good, silver but expensive"])


//: Swift 3.1
struct Team<T> {
    struct TeamMember {
        let name: T?
        let age: T?
    }
}


struct NestedProduct<T> {
    indirect enum Gadget {
        case smartPhone
        case laptop
        case fridge
        case others(T)
    }
    
    indirect enum Company {
        case Samsung
        case Apple
        case Sony
        case others(T)
    }
    
    let company: Company
    let gadget: Gadget
    
    let reviews: [T]
    
    init(enterCompany: Company, enterGadget: Gadget, enterReview: [T]) {
        company = enterCompany
        gadget = enterGadget
        reviews = enterReview
    }
}

let myFridge = NestedProduct(enterCompany: .Apple, enterGadget: .laptop, enterReview: ["Good"])


//: > **Cyclic Dependency:** A relation between two or more modules which either directly or indirectly depends on each other to function properly. The tight coupling of the mutually dependent modules which reduces or make impossible the separate re-use of a single module.

//: ### Recursive Enum
//: Reference vs Value Type in Associated Value

class NiksClass { }
struct NiksStruct { }
enum NiksEnum {
    case NiksCase
}

let niksClass = NiksClass()
let niksStruct = NiksStruct()
let niksEnum = NiksEnum.NiksCase

enum MyEnum {
    case myClass(NiksClass)
    case myStruct(NiksStruct)
    case myEnum(NiksEnum)
}

MyEnum.myClass(niksClass)
MyEnum.myStruct(niksStruct)
MyEnum.myEnum(niksEnum)

//: The Meaning of `indirect enum` with Binary Tree
indirect enum Tree {
    case Empty
    case Node(value: Int, left: Tree, right: Tree)
}

let tree1 = Tree.Node(value: 1, left: Tree.Empty, right: Tree.Empty)
let tree2 = Tree.Node(value: 2, left: Tree.Empty, right: Tree.Empty)
let tree3 = Tree.Node(value: 3, left: tree1, right: tree2)
let tree4 = Tree.Node(value: 4, left: tree3, right: Tree.Empty)

//: Recursive Function to sum values
func evaluateTree(tree: Tree) -> Int {
    switch tree {
    case .Empty:
        return 0
    case .Node(let value, let left, let right):
        return value + evaluateTree(tree: left) + evaluateTree(tree: right)
    }
}

evaluateTree(tree: tree1)
evaluateTree(tree: tree3)
