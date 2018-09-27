/*:
 ## Learn Swift
 ### Advance Enum
 ### Error Handling with Enum Result Type
 
 **Problem:** `Error Handling` back then
 ---
 */

//: ### HTTPS Request
//: Design Error
enum HTTPError {
    case notfound404
    case forbidden403
}

//: Design Result Type
enum ResultType<T> {
    case success(T)
    case failure(HTTPError)
}

let success = ResultType.success("Nikhil")
let failure: ResultType<String> = ResultType.failure(.notfound404)

//: Design Function and Return Error Object
func findSubDomain(subdomain: String) -> ResultType<String> {
    // Switch Statement
    switch subdomain {
    case "business":
        return ResultType.failure(.forbidden403)
    case "blog":
        return ResultType.failure(.notfound404)
    default:
        return ResultType.success("Found Website")
    }
}

let result = findSubDomain(subdomain: "business")

//: Handle Error

switch result {
case let .success(subDomainName):
    print(subDomainName)
case let .failure(errorType):
    switch errorType {
    case .notfound404:
        print("Not Found: 404")
    case .forbidden403:
        print("Not Allowed: 403")
        
    }
}
