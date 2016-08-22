
import Foundation


/*  Instance Methods  */

enum Position {
    case sitting
    case standing
    case laying
}

class Person {
    let firstName: String
    let lastName:String
    var position = Position.standing

    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }

    func greet() -> String {
        return "hello"
    }

    func sitDown() {
        self.position = .sitting
    }
}



/* Class Methods vs. Type Methods */

/* The difference between static and class methods: With classes,
 *  class methods can be overriden, static methods *cannot*.
 */
class Polygon {
    let sides: [UInt]

    init(sides: [UInt]) {
        self.sides = sides
    }

    class func triangle(size: UInt) -> Polygon {
        return Polygon(sides: [size, size, size])
    }

    static func square(size: UInt) -> Polygon {
        return Polygon(sides: [size, size, size, size])
    }
}

let square = Polygon.square(size: 5)
print(square.sides)

struct Point {
    var x = 0
    var y = 0

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }

    static func add(left: Point, right: Point) -> Point {
        return Point(x: (left.x + right.x), y: (left.y + right.y))
    }
}

let p1 = Point(x: 10, y: 10)
let p2 = Point(x: -5, y: -5)

let p3 = Point.add(left: p1, right: p2)
print("\(p3)")


/*  Overriding */

class Texan : Person {
    override func greet() -> String {
        return "Howdy!"
    }
}

let texan = Texan(firstName: "Bob", lastName: "Smith")
print(texan.greet())


/*  Overloading */

// Uniqueness of method names includes the function name + parameter names + parameter types + return type

class Arithmatic {
    func add(left: Int, right: Int) -> Int {
        return left + right
    }

    func add(left: Double, right: Double) -> Double {
        return left + right
    }
}
