/*
 *  Example code taken and modified from https://developer.apple.com/library/prerelease/content/documentation/Swift/Conceptual/Swift_Programming_Language/ErrorHandling.html
 */

import Foundation


public enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

extension String : Error {
    
}

public struct Item {
    public var price: Int
    public var count: Int
    
    public init(price: Int, count: Int) {
        self.price = price
        self.count = count
    }
}

public class VendingMachine {
    public var inventory: [String : Item]

    public var coinsDeposited = 0

    public init(inventory: [String : Item]) {
        self.inventory = inventory
    }

    public func addCoins(amount: Int) {
        coinsDeposited += amount
    }
    
    public func vend(itemNamed name: String) throws -> String {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        
        if (self.coinsDeposited == 0) {
            throw "You have no money..."
        }

        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }

        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }

        coinsDeposited -= item.price

        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem

        print("Dispensing \(name)")
        
        return name
    }
}
