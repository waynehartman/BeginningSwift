
import Foundation



/*  Initializers  */

class Animal {
    let eyes: UInt
    
    init(eyes: UInt) {
        self.eyes = eyes
    }
}


/*  Subclass Initializers  */

class Human : Animal {
    let name: String
    
    init(eyes: UInt, name: String) {
        self.name = name

        super.init(eyes: eyes)
    }
}


/*  Struct Initializers  */

struct Point {
    var x: Int
    var y: Int
}

let point = Point(x: 0, y: 0)


/*  Convenience Initializers

    Rule 1: A designated initializer must call a designated initializer from its immediate superclass.
    Rule 2: A convenience initializer must call another initializer from the same class.
    Rule 3: A convenience initializer must ultimately call a designated initializer.
 */

extension Human {
    convenience init(name: String) {
        self.init(eyes:2, name: name)
    }
}

