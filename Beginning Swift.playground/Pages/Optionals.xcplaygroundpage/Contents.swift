import Foundation

/*  Optionals allow variables to be `nil`, or lacking a value  */

var greeting: String? = nil

print(greeting)

greeting = "Hello"


/*  Unwrapping  */

var salutation: String? = nil
var chars = salutation?.characters

if chars != nil {
    print(salutation)
} else {
    print("Nothing to say")
}



/*  Force Unwrapping  */

var name: String? = "Wayne"

if name!.characters.count > 0 {
    print("My name is \(name)")
}


