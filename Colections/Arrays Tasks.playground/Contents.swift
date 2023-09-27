import UIKit

//1. Найти все эдементы массива, которые больше предыдущего
if true {
    //var array = [Int]()
    var array = [34, 32, 45, 56, 45, 5, 23, 67]
    var resultArray = [Int]()
    
    if !array.isEmpty {
        for (index, element) in array.enumerated() {
            if index != 0 {
                if element > array[index - 1] {
                    resultArray.append(element)
                }
            }
        }
    } else {
        print("Array is empty")
    }
    print("1.", terminator: " ")
    print(resultArray)
}


//2. Разделить все элементы массива на максимальный
if true {
    var array = [34, -32, 45, 56, 45, -5, 23, 67]
    var resultArray = [Double]()
    var max = Int.min
    
    for element in array {
        if element > max {
            max = element
        }
    }
    resultArray = array.map { element in
        Double(element) / Double(max)
    }
    print("2.", terminator: " ")
    print(resultArray)
    
}

//3. Поменять местами максимальный и минимальный элементы массива

if true {
    var array = [34, -32, 45, -56, 45, -5, 23, 67, 6, -8, 98, -64]
    
    func reversMinMax(_ array: [Int]) ->[Int] {
        var newArray = array
        if !newArray.isEmpty {
            var max = Int.min
            var min = Int.max
            var indexMax = 0
            var indexMin = 0
            for (index, element) in newArray.enumerated() {
                if element > max {
                    max = element
                    indexMax = index
                } else if element < min {
                    min = element
                    indexMin = index
                }
            }
            
            var temp = newArray[indexMin]
            newArray[indexMin] = newArray[indexMax]
            newArray[indexMax] = temp
        } else {
            print("Array is empty")
        }
        return newArray
    }
    print("3.", terminator: " ")
    print(reversMinMax(array))
}
//4. Найти сумму четных отрицательных элементов массива

if true {
    var array = [34, -32, 45, -56, 45, -5, 23, 67, 6, -8, 98, -64]
    if !array.isEmpty {
        var sum = 0
        for element in array where element % 2 == 0 && element < 0 {
            sum += element
        }
        print("4. sum = \(sum)")
    } else {
        print("Array is empty")
    }
}

//5. Найти минимальный из элементов массива с четными индексами
if true {
    var array = [34, -32, 45, -56, 45, -5, 23, 67, 6, -8, 98, -64]
    if !array.isEmpty {
        var min = Int.max
        for (index, element) in array.enumerated() where index % 2 == 0 {
            if element < min {
                min = element
            }
        }
        print("5. min = \(min)")
    } else {
        print("Array is empty")
    }
}

//6. Вывести индексы элементов массива, значения которых находятся в указанном наперед диапазоне
if true {
    var array = [34, -32, 45, -56, 45, -5, 23, 67, 6, -8, 98, -64]
    var resultArray = [Int]()
    if !array.isEmpty {
        var range = -12...20
        for (index, element) in array.enumerated() where range ~= element {
            resultArray.append(index)
        }
        print("6. indices = \(resultArray)")
    } else {
        print("Array is empty")
    }
}

//7. Найти два максимальных элемента массива
if true {
    var array = [34, -32, 45, -56, 45, -5, 23, 67, 6, -8, 98, -64]
    var max = Int.min
    var max2 = Int.min
    for element in array {
        if element > max {
            max = element
        }
    }
    for element in array where element != max {
        if element > max2 {
            max2 = element
        }
    }
    print("7. max = \(max), max2 = \(max2)")
}

//8. Определить количество элементов массива, значение которых больше соседних элементов
if true {
    var array = [34, -32, 45, -56, 45, -5, 23, 67, 6, -8, 98, -64]
    var result = 0
    if array.isEmpty || array.count < 3 {
        print("неверно задан массив (должен быть не пустой и длина не менее 3-х элементов)")
    } else {
        for (index, element) in array.enumerated() {
            if index != 0 && index != array.count - 1 {
                if element > array[index - 1] && element > array[index + 1] {
                    result += 1
                }
            }
        }
    }
  
    print("8. count = \(result)")
}

//9. Найти среднее арифметическое четных положительных элементов массива, стоящих на нечетных позициях
if true {
    var array = [34, 32, 44, 56, 40, 6, 20, 68, 6, 8, 98, -64]
    var averageSum = 0
    var count = 0
    var result: Double = 0
    if array.isEmpty {
        print("неверно задан массив")
    } else {
        for (index, element) in array.enumerated() where
        element % 2 == 0 && element > 0 && index % 2 != 0 {
                averageSum += element
                count += 1
            }
        result = Double(averageSum) / Double(count)
        }
  
    print("9. count = \(result)")
}

//10. Вывести массив, состоящий из уникальных значений исходного массива
if true {
    var array = [34, 32, 44, 56, 44, 6, 20, 68, 6, 8, 8, -64]
    var resultArray = [Int]()
    for element in array where !(resultArray.contains(element)) {
        resultArray.append(element)
    }
    print("10. \(resultArray)")
}

//11. Заменить в массиве отрицательные числа нулем
if true {
    var array = [-34, 32, 44, -56, 44, -6, 20, 68, -6, 8, 8, -64]
    
    for (index, item) in array.enumerated() {
        if item < 0 {
            array[index] = 0
        }
    }
    
    print("11. \(array)")
}
//12. Cортировка массива по убыванию(возрастанию)

if true {
    var array = [-34, 32, 44, -56, 44, -6, 20, 68, -6, 8, 8, -64]
    
    //array.sort(by: <)
    
    for i in 0..<array.count - 1 {
        for j in (0...array.count - 2 - i) {
            if array[j] > array[j + 1] {
                var temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }

    print("12. \(array)")
}

//13. Найти max(min) элемент в массиве

if true {
    var array = [-34, 32, 44, -56, 44, -6, 20, 68, -6, 8, 8, -64]
    var min = Int.max
    var max = Int.min
    
    if !array.isEmpty {
        for item in array {
            if item < min {
                min = item
            }
            if item > max {
                max = item
            }
        }
    } else {
        print("The array is empty")
    }

    print("13. min =  \(min), max = \(max)")
}
//14 – Найти сумму элементов массива
if true {
    var array = [34, 32, 44, 56, 44, 6, 20, 68, 6, 8, 8, 64]
    var sum = 0
    
    for item in array {
        sum += item
    }
    
    print("14. sum =  \(sum)")
}

//15. У вас есть массив с целыми числами, в том числе и отрицательными, вам нужно найти самое большое произведение 3 чисел из этого массива.

if true {
    var array = [-34, 32, 44, 56, -44, 6, 20, 68, -6, 8, 8, -64]
    

}







