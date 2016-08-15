
import Foundation

/*  Stored Properties  */

class Vehicle {
    var numberOfWheels: Int
    var color: String?
    
    init(numberOfWheels: Int) {
        self.numberOfWheels = numberOfWheels
    }
}



/*  Lazy Stored Properties  */

class BookCheckout {
    lazy var checkoutTime = Date()
}


/*  Computed Properties  */

struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size {
    var width = 0.0
    var height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            self.origin.x = newCenter.x - (self.size.width / 2)
            self.origin.y = newCenter.y - (self.size.height / 2)
        }
    }
}

var rect = Rect(origin: Point(), size: Size(width: 10.0, height: 10.0))

print("origin: \(rect.origin)\t center: \(rect.center)")
rect.center = Point(x: 15, y: 15)

print("origin: \(rect.origin)\t center: \(rect.center)")


/*  Read-Only Computed Properties  */

class Polygon {
    let sides: [UInt]
    var perimeter: UInt {
        var value: UInt = 0
        for side in sides {
            value += side
        }
        return value
    }
    
    init(sides: [UInt]) {
        self.sides = sides
    }
}

let square = Polygon(sides:[4,4,4,4])
print("perimeter:\(square.perimeter)")

/*  Property Observers  */

class Person {
    var name: String {
        willSet {
            print("about to change name..")
        }
        didSet {
            print("changed name..")
        }
    }
    
    init(name: String) {
        self.name = name
    }
}

let person = Person(name: "Jack")
person.name = "Jill"


