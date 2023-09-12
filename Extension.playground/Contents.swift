import UIKit

extension Int {
    func square() -> Int {
        self * self
    }
    
    func repetition(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
    
    var isEven: Bool {
        self % 2 == 0
    }
    
}

var number = 10
number.square()
number.isEven

number.repetition {
    print("Swift")
}

//----------------------------------------------------------------------

extension Double {
    
    
    var m: Double {
        self
    }
    
    var km: Double {
        self * 1000
    }
    
    var cm: Double {
        self / 100
    }
    
    var mm: Double {
        self / 1000
    }
}


var double = 5.0

double.km
double.mm
double.cm

