
import Foundation


/*  Error Protocol  */

enum ATMError: Error {
    case maxDailyWithdrawl(maxAmount: Double, remainingAmount: Double)
    case insufficientFunds
    case maxDailyDeposit
}

/*  Throwing Errors  */

class ATMTransaction {
    let accountNumber: String
    var balance: Double
    var dailyDeposit: Double = 0.0
    var dailyWithdrawl: Double = 0.0
    let maxDeposit = 3000.0
    let maxWidthdrawl = 1000.0
    
    init(accountNumber: String, balance: Double) {
        self.accountNumber = accountNumber
        self.balance = balance
    }
    
    func withdraw(amount: Double) throws -> (Double, Double) {
        if amount > self.balance {
            throw ATMError.insufficientFunds
        }
        
        if (amount + self.dailyWithdrawl) > self.maxWidthdrawl {
            throw ATMError.maxDailyWithdrawl(maxAmount: self.maxWidthdrawl, remainingAmount: self.maxWidthdrawl - self.dailyWithdrawl)
        }
        
        self.balance -= amount;
        self.dailyWithdrawl += amount;
        
        return (amount, self.balance)
    }
    
    func deposit(amount: Double) throws -> Double {
        if (amount + self.dailyDeposit) > self.maxDeposit {
            throw ATMError.maxDailyDeposit
        }
        
        self.balance += amount
        
        return self.balance
    }
}



/*  Handling Errors  */

var transaction = ATMTransaction(accountNumber: "498438", balance: 2000.0)

do {
    let receipt1 = try transaction.withdraw(amount: 25.00)
    print(receipt1)
    let receipt2 = try transaction.withdraw(amount: 900.0)
    print(receipt2)
    
    let receipt3 = try transaction.withdraw(amount: 100.0)
} catch ATMError.insufficientFunds {
    print("You don't have enough funds.")
} catch ATMError.maxDailyWithdrawl(let maxAmount, let remainingAmount) {
    print("You may only withdraw \(maxAmount) per day.  You can withdraw \(remainingAmount) more today.")
}


