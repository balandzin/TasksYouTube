import UIKit

//  Классы

class Human {
    var name: String  // Свойства //stored properties, computed properties
    var age: Int
    
    var isQualified: Bool
    var status: String {
        if isQualified {
            return ("\(name) is qualified for this job")
        } else {
            return ("\(name) is not qualified for this job")
        }
    }
    
    func move() {  // функции в классах называются методы
        print("\(name) is moving")
    }
    
    init(name: String, age: Int, isQualified: Bool) {
        self.age = age
        self.name = name
        self.isQualified = isQualified
    }
}

var anton = Human(name: "Anton", age: 33, isQualified: true)
anton.age
anton.name
anton.status
anton.move()
//--------------------------------------------------------------------

// get + set

class Account{
    
    var sum: Double = 0 // сумма вклада
    var rate: Double = 0.01 // процентная ставки
    
    var profit: Double{
        get {
            return sum + sum * rate
        }
        set {
            self.sum = newValue / (1 + rate)
        }
    }
    init (sum: Double, rate: Double) {
        self.sum = sum
        self.rate = rate
    }
}
var myAcc: Account = Account(sum: 1000, rate: 0.1)
print (myAcc.profit)

// ожидаемая прибыль
myAcc.profit = 2000

print (myAcc.sum)
// необходимая сумма вклада для получения этой прибылиmyAcc.profit = 2000


