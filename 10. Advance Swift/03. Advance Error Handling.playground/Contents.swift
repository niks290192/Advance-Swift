/*:
## Learn Swift
### Advance Swift
### Advance Error Handling

**Problem:** What is `rethrow`?
---

*/


Array<String>()

//: Design Functions
func nonThrowableFunc() {
    print("From Non-Throwable Function")
}

func throwableFunc() {
    print("From throwable function")
    throw TestingError.randomError
}

//: Design Error Case
enum TestingError: Error {
    case randomError
}


func rethrowableFuncWithErrorHandling(function: () throws -> ()) rethrow {
    do {
        try function()
    } catch TestingError.randomError {
        print("Random Error thrown by the parameter")
    } catch {
        fatalError("FATAL ERROR: Weird Error")
    }
}


//: Enter throwable function
try? rethrowableFuncWithErrorHandling(function: throwableFunc)
// try rethrowableFuncWithErrorHandling


//: Enter non-throwable function
rethrowableFuncWithErrorHandling(function: nonThrowableFunc)