
import Foundation

/*  Class Definition  */

class Vehicle {
    var numberOfWheels: UInt?
    var color: String?
}


/*  Struct Definition  */

struct Point {
    let x: Int
    let y: Int
}


/*  Methods  */

struct Person {
    var firstName: String?
    var lastName: String?
    
    func greet(person: Person) -> String {
        return "Hello, \(String(describing:person.firstName)), my name is \(String(describing:self.firstName))."
    }
}

/*  Initializers  */

class Polygon {
    let sides: UInt
    
    init?(sides: UInt) {
        if (sides <= 0) {
            return nil
        }

        self.sides = sides
    }
}


/*  Creating Instances  */

let car = Vehicle()
let point = Point(x: 4, y: -9)
print("(\(point.x), \(point.y))")

let person = Person(firstName: "Wayne", lastName: "Hartman")
let square = Polygon(sides: 4)

