import UIKit

//{ (параметры) -> тип результата in
//    тело клоужера (выражения)
//}

// клоужер принимает параметры и сам является параметром функции
func travel(action: (String) -> Void) {
    print("I am get ready to go")
    action("London")
    print("I arrived")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}
//------------------------------------------------------------------

let changeSpeed = {(speed: Int) in
    print("Changing speed to \(speed)kph")
}

func buildCar(name: String, engine: (Int) -> Void) {

}

//------------------------------------------------------------------
func travel2(action: (String) -> String) {
    print("I am get ready to go")
    let description = action("London")
    print(description)
    print("I arrived")
}
travel2 { (place: String) in
    return "I'm going to \(place) in my car"
}
//------------------------------------------------------------------

func travel3 (action: (String, Int) -> String) {
    print ("I'm getting ready to go.")
    let description = action ("London", 60)
    print (description)
    print ("I arrived!")
}

travel3 {
    "\($0) and \($1)"
}
//------------------------------------------------------------------

func sum (num1: Int, num2: Int, action: (Int, Int) -> Int) -> Int {
    print("Sum is \(action(num1, num2))")
    return action(num1, num2)
}

//let result = sum(num1: 12, num2: 12) { num1, num2 in
//    num1 + num2
//}

let result = sum(num1: 12, num2: 12) {
    $0 + $1
}
print(result)

//------------------------------------------------------------------

func travel4() -> (String) -> Void {
    return {
        print ("I'm going to \($0)")
    }
}
let result1 = travel4 ()
result1("London")

//------------------------------------------------------------------

// Захват значений

func travel5 () -> (String) -> Void {
    var counter = 1
    return {
        print ("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result2 = travel5()

result2("London")
result2("London")
result2("London")


