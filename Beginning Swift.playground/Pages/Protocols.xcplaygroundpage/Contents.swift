//: [Previous](@previous)

import Foundation

/*  Declaration Syntax  */

protocol Greeting {
    func greet() -> String;
}


class Person : Greeting {
    func greet() -> String {
        return "Hello!"
    }
}

/*  Handling Optional Methods  */

@objc protocol Dancing {
    func doSalsa()
    @objc optional func doElectricSlide()
}

class Dancer: Dancing {
    func doSalsa() {
        print("I'm doing the salsa!")
    }
}

let dancer: Dancing = Dancer()
dancer.doSalsa()
dancer.doElectricSlide?()


/*  Protocol Inheritance  */

protocol Jumping : Dancing {
    func jump()
}

class Tigger : Jumping {
    func doSalsa() {
        print("salsa fun, fun, fun")
    }
    
    func jump() {
         print("boingy")
    }
}

let jumping: Jumping = Tigger()

jumping.jump()


/*  Protocol Extension  */

extension Dancer : Jumping {

    func jump() {
        print("I'm jumping!!!")
    }
}

