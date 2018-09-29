/*:
 ## Learn Swift
 ### What's New in Swift 4
 ### Codable and JSON Serialization
 
 **Problem:** Map JSON to object in one line of code and the opposite
 ---
 */

//: Your Past

/*
 let republicOfIndia = JSON(dictionary: [
 "capital": "New Delhi",
 "name": "Republic of India"
 ])
 */

// iTunes API Doc: https://affilate.itunes.apple.com/resources/documentation/itunes-store-web-service-search-api/#overview

// API Call: https://itunes.apple.com/lookup?id=909253

//: Import Foundation
import Foundation

//: Design Model
struct User: Codable {
    var name: String
    var loginMethods: [LoginMethods]
    var numberOfFriends: Int
}

enum LoginMethods: String, Codable {
    case facebook, instagram, linkedIn, twitter
}

//: Dummy Model
struct AnotherUser: Codable {
    var name: String
    var social: [LoginMethods]
    var numberOfFriends: Int
}

//: Create Object
let niks = User(name: "Up", loginMethods: [.facebook, .instagram], numberOfFriends: 4)

//: ### Encode (Object to JSON)
let jsonEncoder = JSONEncoder()

//: Modify Setting/Property
jsonEncoder.outputFormatting = .prettyPrinted
jsonEncoder.dataEncodingStrategy = .base64

//: Encode
var data: Data?

do {
    let jsonData = try jsonEncoder.encode(niks)
    data = jsonData
    let jsonString = String(data: jsonData, encoding: .utf8)
    print("JSON String: " + jsonString!)
}
catch(let error) {
    print(error)
}

//: ### Decode(JSON to Object)

//: Create Decoder
let jsonDecoder = JSONDecoder()

//: Decode
do {
  let niks = try jsonDecoder.decode(User.self, from: data!)
    print("Name: \(niks.name)")
    print("Number of friends: \(niks.numberOfFriends)")
} catch(let error) {
    print(error)
}


//: > It has to look identical --> less flexible
