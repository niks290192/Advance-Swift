/*:
 ## Learn Swift
 ### Advance Enum
 ### Static and Mutating Methods with `self`
 
 **Problem:** Let's make it practical
 
 ---
 */

//: Practical with StoryBoard
enum Storyboard: String {
    case profile
    case setting
    case newsfeed
    
    var identifier: String {
        return self.rawValue
    }
}

let profile = Storyboard.profile
profile.identifier

//: API Guideline Goal
func describeStoryboard(storyboard: Storyboard) -> String {
    switch storyboard {
    case .profile:
        return "\(storyboard.identifier): Profile picture, followers"
    case .setting:
        return "\(storyboard.identifier): Logout, Invite"
    case .newsfeed:
        return "\(storyboard.identifier): videos, texts"
    }
}

describeStoryboard(storyboard: .profile)

//: Mutating Methods
enum MealProcess: String {
    case breakfast, lunch, dinner
    
    var description: String {
        return rawValue
    }
    
    mutating func nextMeal() {
        print("Time to move from \(self.description)")
        
        switch self {
        case .breakfast:
            self = .lunch
            print("I had a nice lunch")
        case .lunch:
            self = .dinner
            print("i had a nice dinner")
        case .dinner:
            self = .breakfast
            print("I had a nice breakfast")
        }
    }
}

var currentMeal = MealProcess.breakfast
currentMeal.nextMeal()
currentMeal.nextMeal()

//: Static Method
//enum AppleDevices {
//  case iWatch, iPhone, iMac, MacPro
//
//  static func getAppleDevice(name: String) -> AppleDevices? {
//    switch name {
//    case "iWatch":
//      return .iWatch
//    case "iPhone":
//      return .iPhone
//    case "iMac":
//      return .iMac
//    case "MacPro":
//      return .MacPro
//    default:
//      return nil
//    }
//  }
//}
//
//let userProduct = AppleDevices.getAppleDevice(name: "iWatch")

enum AppleDevices: String {
    case AppleWatch, iPhone, iMac, MacPro
    
    static func getProduct(name: String) -> AppleDevices? {
        return AppleDevices(rawValue: name)
    }
    
    static func getAppleDevice(enterName: String) -> AppleDevices? {
        switch enterName {
        case "AppleWatch", "iPhone", "iMac", "MacPro":
            return getProduct(name: enterName)
        default:
            return nil
        }
    }
}

//: TODO
//: Custom Init
enum AppleDevice: String {
    case AppleWatch, iPhone, iMac, MacPro
    
    init?(name: String) {
        if name == "AppleWatch" {
            self = .AppleWatch
        } else {
            return nil
        }
    }
}

AppleDevices(rawValue: "AppleWatch")
AppleDevices(rawValue: "AppleWatch")

enum IntCategory {
    case small
    case medium
    case big
    case weird
    
    init(number: Int) {
        switch number {
        case 0..<1000:
            self = .small
        case 1000..<10000:
            self = .medium
        case 10000..<100000:
            self = .big
        default:
            self = .weird
        }
    }
}

IntCategory(number: 12413423432)

//: Practical Case

//: HTTP Request
enum HttpError: String {
    case Code400 = "Bad Request"
    case Code401 = "Unauthorized"
    case Code402 = "Payment Required"
    case Code403 = "Forbidden"
    case Code404 = "Page Not Found"

    var description: String {
        return self.rawValue
    }
}

HttpError.Code400.description

//: Cell Identifier
enum CellType: String {
    case ButtonValueCell = "ButtonValueCell"
    case UnitEditCell = "UnitEditCell"
    case LabelCell = "LabelCell"
    case ResultLabelCell = "ResultLabelCell"
    
    var name: String {
        return self.rawValue
    }
}

//: UIKit

import UIKit

enum NavigationTheme {
    case Placeid
    case Waring
    case Danger
    
    var barTintColor: UIColor {
        switch self {
        case .Placeid: return UIColor.clear
        case .Waring: return UIColor.blue
        case .Danger: return UIColor.red
        }
    }
}

let colorSituration = NavigationTheme.Placeid
colorSituration.barTintColor

extension NavigationTheme {
    init(numberOfTasks: Int){
        switch numberOfTasks {
        case 0...3:
            self = .Placeid
        case 4...9:
            self = .Waring
        default:
            self = .Danger
        }
    }
}

let currentColor = NavigationTheme(numberOfTasks: 10).barTintColor

