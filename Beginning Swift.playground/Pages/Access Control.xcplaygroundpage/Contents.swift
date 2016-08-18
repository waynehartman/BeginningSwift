
import Foundation
import CoreLocation


/*  Public  */

public class Person {
    let name: String

    init(name: String) {
        self.name = name
    }
}

/*  Internal  */

internal class Robot {
    let modelNumber: String
    
    init(modelNumber: String) {
        self.modelNumber = modelNumber
    }
}

/*  Private  */

struct Location {
    let coordinate: CLLocationCoordinate2D
    let name: String
}

class ATMLocator {
    private let location: CLLocationCoordinate2D

    init(location: CLLocationCoordinate2D) {
        self.location = location
    }
    
    func fetchNearbyATMs(completion: ([Location]?, Error?) -> ()) {
        if validateLocation() {
            completion([], nil)
        } else {
            let error = NSError(domain: "", code: 401, userInfo: nil)
            completion(nil, error)
        }
    }
    
    private func validateLocation() -> Bool {
        return true
    }
}

/* File Private */

protocol Dancing {
    func dance()
}

class Dancer {
    private let legs = 2
//    fileprivate let legs = 2
}

//extension Dancer : Dancing {
//    func dance() {
//        for _ in 0..<self.legs {
//            print("shaking a leg!")
//        }
//    }
//}
