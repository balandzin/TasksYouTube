import UIKit

// Функции

// Объявление и вызов функций // Принимать // Возвращать
func square(_ number: Int = 0) -> Int {
    return number * number
}
let sq = square()


// Возвращать два или более значений из функции
func getMinMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin{
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let arr = [-1, 3, -5, 67, 8, 3, -2, 34, 67, 123]

if let tuple = getMinMax(array: arr) {
    tuple.min
    tuple.max
}



// Вариативные функции и вариативные параметры
func variatSquare(numbers: Int...){
    for number in numbers {
        print("square \(number) is \(number * number)", terminator: " ")


    }
    print()
}
variatSquare(numbers: 1, -7, 2, -4, 2, -5)

// Сквозные параметры
func inoutSquare(value: inout Int) {
    value *= value
}
var a = 12
inoutSquare(value: &a)

// bauble sort
func bubbleSort(array: [Int]) -> [Int]{
    
    var arr = array
    
    for i in 0..<arr.count - 1 {
        for j in (0...arr.count - 2 - i) {
            if arr[j] > arr[j + 1] {
                var temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
    return arr
}
var array2 = [-1, 3, -6, 9, -4, 45, -7, 76, -32]
var arrayResult = bubbleSort(array: array2)
print(arrayResult)
print(arrayResult.count)




