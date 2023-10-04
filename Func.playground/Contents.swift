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


/*
 Представим банк, в котором алгоритм начисления процента по вкладу зависит от суммы вклада. В функцию в качестве параметра будет подаваться число (сумма вклада), а также количество лет. При значении меньше 10000, будет начислено 5% ежегодно, если значение находится в диапазоне от 10000 до 50000 - 7% ежегодно, если больше 50000, то 10% ежегодно. Отработав, функция должна вернуть общую сумму с начисленными
 */

if true {
    var deposit = 10000.0
    let years = 5
    let persent = {
        if years < 10000 {
            7
        } else if years < 50000 {
            7
        } else {
            10
        }
    }
    
    func calculateProfit ( deposit: inout Double, years: Int, percent: Int) -> Double {
        for _ in 1...years {
            deposit = deposit + deposit * Double(percent) / 100
        }
        return deposit
    }
    
    let result = calculateProfit(deposit: &deposit, years: years, percent: persent())
    print(result)
}

/*
 Стрелок стреляет в мишень. Диаметр центрального круга (10-ки) - 1 см, толщина каждого кольца мишени - 1 см, всего областей мишени 10 (9 колец и один круг - 10-ка, совмещённая с центром координатной плоскости). Известны координаты 5-ти попаданий.
 Посчитать сумму выбитых очков. Возможно попадания в «Молоко»
 */

