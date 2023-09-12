import UIKit
let a = 27

multiplication(a)
func multiplication(_ number: Int) {
    print(number * number)
}

let b = 1600
let c = 12.9
var sq = square(number1: b, number2: c)
print(square(number1: b, number2: c))

func square(number1: Int, number2: Double) -> Double {
    return Double(number1) * number2
}

enum SeasonsOfTheYear {
    case winter
    case autumn
    case summer
    case spring
}

let summer = SeasonsOfTheYear.summer
print(summer)

func getName (season: SeasonsOfTheYear) -> String {
    switch season {
    case .summer: return "Лето"
    case .autumn: return "Осень"
    case .winter: return "Зима"
    case .spring: return "Весна"
    }
}

let nameOfSeason = getName(season: .spring)
print(nameOfSeason)


enum TypesOfPizza: String{
    case calzone = "Calzone"
    case pizzaFritta = "Pizza Fritta"
    case pizzaGourmet = "Pizza Gourmet"
}
let calzone = TypesOfPizza.calzone
let pizzaFritta = TypesOfPizza.pizzaFritta
let pizzaGourmet = TypesOfPizza.pizzaGourmet

//3. Добавить возможность получения названия пиццы через rawValue
print(calzone.rawValue)
print(pizzaFritta.rawValue)
print(pizzaGourmet.rawValue)


