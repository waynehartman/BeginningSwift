import Foundation

/*
 *  Super useful reference for closure syntax:
 *  http://goshdarnclosuresyntax.com/
 */

/*  Variable  */

let add = {(left: Int, right: Int) -> Int in
    return left + right
}

let subtract = {(left: Int, right: Int) -> Int in
    return left - right
}

add(5, 5)
add(6, 24)
subtract(20, 89)
subtract(10, 9)

let operations = [add, subtract]

for i in 0...100 {
    for operation in operations {
        operation(-i, i*i)
    }
}



/*  Optional  */

var optionalClosure: ((Void) -> (Void))? = nil

if let unwrappedClosure = optionalClosure {
    unwrappedClosure()
}



/*  typealias  */

typealias AliasedClosure = (String) -> (Void)


/*  Function Argument  */

func doHello(closure: (String) -> ()) {
    closure("Hello")
}


/*  Function Parameter  */

doHello(closure: { (greeting: String) in
    let composedGreeting = "\(greeting), strange sir."
    print(composedGreeting)
})

doHello(closure: { (greeting: String) in
    print("\(greeting), World!")
})


