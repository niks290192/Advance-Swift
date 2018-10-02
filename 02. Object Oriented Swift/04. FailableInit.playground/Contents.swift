/*:
 
 ## Learn Swift
 ### Object Oriented Swift
 ### Failable Init
 
 **Problem:** Can initialization fail?
 */

//: Error Handling (Review)

enum NameError: Error {
    case noName
}

struct StudyCourse {
    let courseName: String
    
    init(name: String) throws {
        if name.isEmpty {
            throw NameError.noName
        }
        self.courseName = name
    }
}

do {
    let myCourse = try StudyCourse(name: "Nikhil")
    myCourse.courseName
} catch NameError.noName {
    print("Nikhil, please enter Name")
}


//: Design Failable Init

class Blog {
    let name: String
    init?(name: String){
        if name.isEmpty {
            //Handle error
            return nil
        }
        self.name = name
    }
}

let blog = Blog(name: "")

if let myBlog = blog {
    print(myBlog.name)
}

//: > I personally Prefer error handling approach since more explicit and no need to unwrap.
