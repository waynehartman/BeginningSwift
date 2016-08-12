import Foundation

/*
 *  Super useful reference for closure syntax:
 *  http://goshdarnclosuresyntax.com/
 */

/*  Variable  */

let variableClosure = {(left: Int, right: Int) -> Int in
    return left + right
}

variableClosure(5, 5)


/*  Optional  */

var optionalClosure: ((Void) -> (Void))? = nil

if let unwrappedClosure = optionalClosure {
    unwrappedClosure()
}



/*  typealias  */

typealias AliasedClosure = (String) -> (Void)


/*  Function Argument  */

func doSomething(_ closure: AliasedClosure) {
    closure("Hello!")
}


/*  Function Parameter  */

doSomething({ (value: String) -> (Void) in
    print("\(value), strange sir.")
})


