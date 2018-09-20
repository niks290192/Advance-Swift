/*:
 
 ## Learn Swift
 ### Functional Programming
 ### FlatMap
 
 **Problem:** Let's Flat 3D Arrays
 ---
 */

let example = [[5, 2, 7], [4, 8], [9, 1, 3]]
let result = example.flatMap { $0.map { $0 * $0 }}

let anotherExample: [Int?] = [1, 2, nil, 3, 4, 5, nil, nil]
let AnotherResult = anotherExample.flatMap { $0 }

extension Array {
    func findType() {
        let arrayType = type(of: Element.self) // Array<Int>
        print(arrayType)
        if arrayType == Array<Int>.self {}
    }
}

example.findType()

func myFlatMap(number: [Int]) { }

func niksFlatMap(number: [[Int]], operation: (Int) -> Int) {
    var result: [Int] = []
    for array in number {
        for item in array {
            result.append(item)
        }
    }
    print(result)
}

niksFlatMap(number: [[1, 2, 3], [4, 5], [6, 7, 8]], operation: { $0 })
niksFlatMap(number: [[1, 2, 3, 4, 5],], operation: { $0 })

extension Array {
    func myFlatMap<U>(transfrom: (Element) -> U?) ->[U] {
        var result = [U]()
        for item in map(transfrom) {
            if let nonOptional = item {
                result.append(nonOptional)
            }
        }
        return result
    }
}

let closure: (Int) -> Int? = { $0 }

let myResult = [[1], [2], [3], nil].myFlatMap { $0 }
print(myResult)

let flattenCollection = myResult.joined()
let flattenArray = Array(flattenCollection)

extension Collection where Iterator.Element: Collection {
    func typeOfSub() {
        let arrayType = type(of: Iterator.Element.self.Iterator.Element.self)
        let arraySelf = Iterator.Element.self.Iterator.Element.self
        print(arrayType)
        print(arraySelf)
    }
}

print(example)
example.typeOfSub()
