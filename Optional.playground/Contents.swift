import UIKit

var age: Int? = 12
age = nil

// Forced unwrapping (принудительная распаковка) - лучше не использовать
if age == nil {
    print("age is nil")
} else {
    age! + 1
    print(age!)
}

//Optional binding (связывание опционала)
if let safeAge = age {
    safeAge
} else {
    print("age = nil")
}
 
//Nil coalescing operator (соединения с nil)
let name: String? = nil
let unwrappedName = name ?? "Anonymous"
print(unwrappedName)
//print("Hello, \(name ?? "Anonymous")!")

//Implicitly unwrapped optionals (неявно извлеченные опционалы)
var number1: Int! = nil
number1 = 10
number1 = number1 + 12
print(number1 as Any)

//

var number: String? = "1a"
if let getNumber = number{
    print(Int(getNumber) ?? "0")
} else {
    print("number is nil")
    
}





