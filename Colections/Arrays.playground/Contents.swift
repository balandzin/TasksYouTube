import UIKit

// Коллекции:
// Массив (Array), Множество (Set)|, Словарь (Dictionary)

var array1 = Array<String>()
var array2 = [String]()

let apple = "apple"
let lemon = "lemon"
let orange = "orange"
let strawberry = "strawberry"
let fruits = [apple, lemon, orange, strawberry]

var shoppingList = ["egs", "milk", "bread", "flour", "sweets"]

shoppingList.count
shoppingList.isEmpty
shoppingList.append("butter")
shoppingList[3]
shoppingList[1] = "salt"
shoppingList.insert("sugar", at: 0)

for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated(){
    print("Item \(index): \(value)")
}
shoppingList += ["peper"]











