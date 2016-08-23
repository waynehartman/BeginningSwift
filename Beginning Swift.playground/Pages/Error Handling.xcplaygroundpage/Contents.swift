
import Foundation


/*  Error Protocol  */

enum ATMError: Error {
    case maxDailyWithdrawl(maxAmount: Double, remainingAmount: Double)
    case insufficientFunds
    case maxDailyDeposit
    case sessionInactive
}

/*  Throwing Errors  */

class ATMSession {
    let accountNumber: String
    let maxDeposit = 3000.0
    let maxWidthdrawl = 1000.0
    var sessionIsActive = true

    var balance: Double

    var dailyDeposit: Double = 0.0
    var dailyWithdrawl: Double = 0.0
    
    init(accountNumber: String, balance: Double) {
        self.accountNumber = accountNumber
        self.balance = balance
    }
    
    func withdraw(amount: Double) throws -> (Double, Double) {
        guard self.sessionIsActive == true else {
            throw ATMError.sessionInactive
        }

        guard amount <= self.balance else {
            throw ATMError.insufficientFunds
        }

        let isUnderMaxDailyWithdrawl = (amount + self.dailyWithdrawl) <= self.maxWidthdrawl
        guard isUnderMaxDailyWithdrawl else {
            throw ATMError.maxDailyWithdrawl(maxAmount: self.maxWidthdrawl, remainingAmount: self.maxWidthdrawl - self.dailyWithdrawl)
        }
        
        self.balance -= amount;
        self.dailyWithdrawl += amount;
        
        return (amount, self.balance)
    }
    
    func deposit(amount: Double) throws -> Double {
        guard sessionIsActive == true else {
            throw ATMError.sessionInactive
        }

        guard (amount + self.dailyDeposit) <= self.maxDeposit else {
            throw ATMError.maxDailyDeposit
        }

        self.balance += amount

        return self.balance
    }
    
    func endSession() {
        self.sessionIsActive = false
    }
}



/*  Handling Errors  */

let accountNumber = "34534533"

var session = ATMSession(accountNumber: accountNumber, balance: 1000.0)
//var session = ATMSession(accountNumber: accountNumber, balance: 2000.0)

do {
//    defer {
//        session.endSession()
//    }

    let receipt1 = try session.withdraw(amount: 25.0)
    print(receipt1)

    let receipt2 = try session.withdraw(amount: 900.0)
    print(receipt2)

    let receipt3 = try session.withdraw(amount: 100.0)
    print(receipt3)

} catch ATMError.insufficientFunds {
    print("You don't have enough funds.")
} catch ATMError.maxDailyWithdrawl(let maxAmount, let remainingAmount) {
    print("You may only withdraw \(maxAmount) per day.  You can withdraw \(remainingAmount) more today.")
}

do {
    let receipt = try session.withdraw(amount: 3454.0)
} catch ATMError.sessionInactive {
    print("Session is inactive")
}


