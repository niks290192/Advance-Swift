/*:
 
 ## Learn Swift
 ### What's new In Swift 4
 ### Key Paths
 
 **Problem:** I'm tried of chaining
 ---
 */

//: Design Model
struct Developer {
    var platform: Platform
    var information: Information
}

enum Platform {
    case iOS
    case android
}

struct Information {
    var name, strengths, motivation: String
}

//: Create Objects
let aInformation = Information(name: "Nikhil", strengths: "AXC", motivation: "Change the World")
let bInformation = Information(name: "Niks", strengths: "CXA", motivation: "None")

let niks = Developer(platform: .iOS, information: aInformation)
let nikhil = Developer(platform: .android, information: bInformation)

//: Your Past
niks.information.name // Nikhil
nikhil.information.name // Niks

//: ### Introduction Swift 4 Key Paths
//: Access Through "Path"
let niksPlatform = niks[KeyPath: \Developer.platform] //iOS
let NiksName = niks[KeyPath: \Developer.information.name] // "Nikhil"

//: Store Path
let informationKeyPath = \Developer.information
let niksInfo = niks[KeyPath: informationKeyPath]
let nikhilInfo = nikhil[KeyPath: informationKeyPath]

//: Append Key Path
let nameKeyPath = informationKeyPath.appending(path: \.name)
niks[KeyPath: nameKeyPath] // Niks
nikhil[KeyPath: nameKeyPath] // Nikhil
