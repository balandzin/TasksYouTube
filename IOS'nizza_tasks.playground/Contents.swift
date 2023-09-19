import UIKit

// MARK: - Basic operators
// Высчитайте площадь прямоугольника, зная ешо длину и ширину
if true {
    let length = 12
    let width = 10
    
    func getSquare(length: Int, width: Int) -> Int {
        length * width
    }
    
    let square = getSquare(length: length, width: width)
    print("1. square = \(square)")
}

// Высчитайте итоговую сумм оплаты, зная сумму за покупки и процент скидки. Сколько покупателю ннужно оплатить?
if true {
    let sum: Double = 123.6
    let discont: Double = 12.0
    
    let result = sum * (100 - discont) / 100
    print("2. result = \(result)")
}

// Напишите программу, котрая будет определять является ли число четным или не четным
if true {
    let number = 13
    
    var result = number % 2 == 0 ? "Четное" : "Нечетное"
    print("3. result = \(result)")
}

// MARK: - String, Character
// У вас есть константа с произвольным текстом. Получите новое значение в котром символы будут стоять в обратном порядке
if true {
    var str1 = "!ьнед йынсаркерп йокаК"
    
    var result = String(str1.reversed())
    print("4. \(result)")
}

// Посчитайте количество гласных в  произзвольной строке
if true {
    let array: [Character] = ["а", "е", "ё", "и", "о", "у", "ы", "э", "ю", "я" ]
    let str = "Какой прекрасный день"
    var arrayChar = [Character]()
    var count = 0
    
    for i in str.lowercased() {
        arrayChar.append(i)
    }
    
    for element in arrayChar {
        if array.contains(element){
            count += 1
        }
    }
    print("5. count = \(count)")
}

// Создайте несколько констант типа String с произвольным значением. Определите, какая константа содержит самую длинную строку
if true {
    
    let str1: String = "My name is Anton"
    let str2: String = "I'm 33"
    let str3: String = "I am from Belarus"
    
    if str1.count > str2.count && str1.count > str3.count {
        print("6. \(str1) - the biggest")
    } else if str2.count > str1.count && str2.count > str3.count {
        print("6. \(str2) - the biggest")
    } else if str3.count > str2.count && str3.count > str1.count {
        print("6. \(str3) - the biggest")
    }
}

// MARK: - Collections
// В произвольном массиве типа Int найдите наибольший элемент
if true {
    let array: [Int] = [2, 42, -47, 0, 45678]
    //let maxElement = array.max()
    var maxElement = array[0]
    
    for element in array {
        if element > maxElement {
            maxElement = element
        }
    }
    print("7. max = \(maxElement)")
}
