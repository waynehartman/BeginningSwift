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

for i in 0...75 {
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

func doHello(_ closure: (String) -> (Void)) {
    closure("Hello")
}


/*  Function Parameter  */

doHello({ (greeting: String) in
    print("\(greeting), strange sir.")
})

doHello({ (greeting: String) in
    print("\(greeting), World!")
})


