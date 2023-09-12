import UIKit

class Human {
    var age: Int
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}
let human = Human(age: 33, name: "Anton")
human.age = 25

struct Human1 {
    var age: Int
    var name: String
}

var human1 = Human1(age: 25, name: "Maria")
// 1 отличие - не нужно прописывать инициализатор в структуре

human1.age
human1.age = 35
// 2 отличие - в структуре для изменения свойств они должны быть переменными (и экземпляр тоже)

// 3 отличие -  valye type - Int, String, Bool, STRUCT
//           -  reference type - enum, CLASS

var human2 = Human1(age: 30, name: "Olga")



