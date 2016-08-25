
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





/*
 *  EXERCISE:
 *  1) Create a series of classes that model different kinds of accounts
 *  2) Include properties such as a nickname, account number, balance, etc.
 */

class Account {
    let accountNumber: String
    let name: String
    
    init(accountNumber: String, name: String) {
        self.accountNumber = accountNumber
        self.name = name
    }
}

class BankAccount : Account {
    var balance: Double
    
    init(accountNumber: String, name: String, balance: Double) {
        self.balance = balance
        super.init(accountNumber: accountNumber, name: name)
    }
}