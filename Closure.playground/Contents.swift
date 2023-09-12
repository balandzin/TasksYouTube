import UIKit

//{ (параметры) -> тип результата in
//
//    тело клоужера (выражения)
//
//}

// ничег не принимает и не возвращает
let driving = {
    print("1. I am driving")
}
driving()

let driving2 = { (place: String) in
    print("2. I'm going to \(place) in my car")
}
driving2("London")

// различия функций и клоужеров
func pay(user: String, amount: Int) { // function
    //code
}

let payment = {(user: String, amount: Int) in // closure
    //code
}
//---------------------------------
// возвращаем значение
let drivingWithReturn = { (place: String) -> String in
    return "3. I'm going to \(place) in my car"
}
let message = drivingWithReturn("Rome")
print(message)
//---------------------------------

let payment2 = {(user: String) in
    print("Paying \(user)")
}
//---------------------------------
let payment3 = {(user: String) -> Bool in // returb Bool
    print("Paying \(user)")
    return true
}
//---------------------------------
let payment4 = {() -> Bool in // не принимает параметров, но возвращает Bool
    print("Paying...")
    return true
}
//func payment5() -> Bool {}
//---------------------------------
let driving3 = {
    print("I am driving")
}
// () -> Void
//---------------------------------
func travel(action: () -> Void) {
    print("I am get ready to go")
    action()
    print("I arrived")
}
travel(action: driving3)
//---------------------------------

travel() { // trailing closure syntax
    print("I am driving")
}
//---------------------------------
func animate(duration: Double, animations: () -> Void) {
    print("Starting \(duration) second animation")
    animations()
}
//animate(duration: 3, animations: {
//    print("Image")
//})

animate(duration: 3) { // trailing closure syntax -> предыдущие параметры заключаем в круглые скобки, а клоужер выписываем отдельно в фигурных скобках
    print("Image")
}

