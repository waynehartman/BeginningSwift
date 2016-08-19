
import Foundation


/*  Instance Methods  */

enum Position {
    case sitting
    case standing
    case laying
}

class Person {
    var firstName: String
    var lastName:String
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

/* The difference between static and class methods with classes, 
 *  is that class methods can be overriden, static *cannot*.
 */
class Polygon {
    var sides: [Int]

    init(sides: [Int]) {
        self.sides = sides
    }

    class func triangle(size: Int) -> Polygon {
        return Polygon(sides: [size, size, size])
    }

    class func square(size: Int) -> Polygon {
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


