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
let points = [90, 45, 56, 23, 56]

let totalScoreZip = Array(zip(names, points))
print(totalScoreZip)

// flatMap
let array2D = [[1, 2], [3, 4], [5, 6], [7, 8]]
let array1D = array2D.flatMap { $0 }
print(array1D)

// joined
//let array1DJoined = Array(array2D.joined(separator: [0]))
let array1DJoined = Array(array2D.joined())
//let array1DJoined = array2D.joined().map{$0}
print(array1DJoined)
