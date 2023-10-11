import UIKit

let numbers = [1, 2, 3, 4, 5, 6]

// MAP - применить что-либо для каждого элемента массива
let numbersMap = numbers.map { $0 * $0 }
print(numbersMap)

// Filter - отфильтровать по какому-либо условию
let numbersFilter = numbers.filter { $0 % 2 == 0 }
print(numbersFilter)

let numbersMapFilter = numbers.map { $0 * $0 }.filter { $0 % 2 == 0 }
print(numbersMapFilter)

// reduce
let numbersReduce = numbers.reduce(0, +)

// zip
let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
