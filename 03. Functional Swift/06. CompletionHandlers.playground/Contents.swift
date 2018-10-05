/*:
 ## Learn Swift
 ### Intro to Functional Swift
 ### Completion Handlers
 
 **Problem:** I've heard about it. I don't know how to make one.
 ---
 */

//: Definition
//: > Do something when something has been done

//: Completion Handler Used?
//: 1. Notify the download has been completed
//: 2. Animation

//: Design Handler Block

let handlerBlock: (Bool) -> () = {
    if $0 {
        print("Download Complete")
    }
}

let myHandlerBlock: (Bool) -> () = { (isSuccess: Bool) in
    if isSuccess {
        print("Download has been finished")
    }
}

myHandlerBlock(true)

//: Design Function
func downloadAnImage(completionBlock: (Bool) -> Void) {
    for _ in 1...10000 {
        print("Downloading")
    }
    completionBlock(true) //myHandlerBlock(true)
}

downloadAnImage(completionBlock: myHandlerBlock)

//: Pass Directly
downloadAnImage { (isSuccess: Bool) in
    if isSuccess {
        print("Done, bruh")
    }
}

