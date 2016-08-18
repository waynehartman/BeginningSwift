
import Foundation
import MapKit

class Place : NSObject {
    var name: String
    var latitude = 0.0
    var longitude = 0.0
    
    init(name: String) {
        self.name = name
    }
}

/*  Methods  */

extension Place : MKAnnotation {
    public var coordinate: CLLocationCoordinate2D {
        get {
            return CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
        }
    }
    
    public var title: String? {
        get {
            return self.name
        }
    }
}


