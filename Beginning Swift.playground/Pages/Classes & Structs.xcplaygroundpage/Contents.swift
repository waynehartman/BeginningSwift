
import Foundation

/*  Class Definition  */

class Vehicle {
    var numberOfWheels: Int?
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
        return "Hello, \(person.firstName)."
    }
}

/*  Initializers  */

class Polygon {
    let sides: Int
    
    init(sides: Int) {
        self.sides = sides
    }
}


/*  Creating Instances  */

let car = Vehicle()
let point = Point(x: 4, y: -9)
let person = Person(firstName: "Wayne", lastName: "Hartman")
let square = Polygon(sides: 4)

