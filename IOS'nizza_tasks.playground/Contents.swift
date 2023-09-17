import UIKit

// MARK: - Basic operators
// Высчитайте площадь прямоугольника, зная ешо длину и ширину
if true {
    let length = 12
    let width = 10
    
    let square = length * width
    print("1. square = \(square)")
}

// Высчитайте итоговую сумм оплаты, зная сумму за покупки и процент скидки. Сколько покупателю ннужно оплатить?
if true {
    let sum: Double = 123.6
    let discount: Double = 12.0
    
    let result = sum * (100 - discount) / 100
    print("2. result = \(result)")
}

// Напишите программу, котрая будет определять является ли число четным или не четным
if true {
    let number = 12
    
    var result = number % 2 == 0 ? "Четное" : "Нечетное"
    print("3. result = \(result)")
}
