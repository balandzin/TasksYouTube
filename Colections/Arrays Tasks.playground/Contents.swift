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


// 16. фильтровать по параметру
if true {
    var array = [-34, 32, 44, -56, 44, -6, 20, 68, -6, 8, 8, -64]
    
    let result = array.filter { $0 > -34 }
    print("16. \(result)")
}

/*
 1. Добавление в массив

 Вы можете добавить в конец массива или вставить значение по определенному индексу. Для добавления можно использовать команду append или сокращенный оператор +=, как показано ниже:

 arr.append(5)
 arr += [5]
 Для этой задачи эти два утверждения функционально равны. Следует иметь в виду, что для использования оператора += справа должен быть массив, даже если он содержит только одно значение. Однако, если вы хотите добавить в массив более одного элемента, вы просто добавляете к этому литералу массива, таким образом, вы можете добавить больше значений в массив следующим образом:

 обр += [9, 8, 7, 6]

 [5, 5, 9, 8, 7, 6] теперь находятся в (теперь неловко называемом) arr (поскольку мы добавили к нему две пятерки ранее).

 Команду вставки также можно использовать для вставки значения в произвольное место, например:

 arr.insert(92, at: 2)
 //arr now is [5, 5, 92, 9, 8, 7, 6]
 2. Удаление из массива

 Вы также можете удалить элементы из массива. Если мы хотим удалить что-то из данного индекса, мы можем сделать это:

 let removedValue = arr.remove(at: 3)
 //emptyArray now is [5, 5, 92, 8, 7, 6]
 removedValue is 9
 С помощью команды remove(at:) мы удалили 9 из индекса 3. У нее также есть дополнительная возможность вернуть удаленное значение, которое мы сохранили в removeValue. Если вы хотите удалить только значение, это можно проигнорировать и Команда insert:atIndex: явно противоположна этому.

 Команда removeLast обратна команде add, как показано ниже:

 let removedLastValue = emptyArray.removeLast()
 //emptyArray now is [5, 5, 92, 8, 7]
 //removedLastValue is 6
 Как и команда removeAtIndex, она также возвращает свое значение, которое мы сохранили в переменной removeLastValue.

 Разве это тоже не было пустым массивом? Давайте просто избавимся от всего:

 arr.removeAll()
 //arr is empty
 
 3. Считать

 Чтобы получить размер массива в Swift, используйте функцию подсчета массива.

 let count = arr.count
 //arr is [5, 5, 92, 8, 7]
 //count = 5
 4. Пусто

 Чтобы проверить, пуст ли массив, используйте функцию Swift isEmpty для массива.

 let count = arr.count
 //arr is [5, 5, 92, 8, 7]
 //count = 5
 5. Проверьте, присутствует ли конкретный элемент

 arr.contains(5) //true or false
 6. Получить последний элемент массива

 Array.last возвращает последний элемент этого массива. Если массив пуст, то это свойство возвращает nil.

 arr.last
 7. Получить случайный элемент из массива

 Array.randomElement() возвращает элемент, который выбирается случайным образом из элементов этого массива. Если массив пуст, то этот метод возвращает nil.

 var random = arr.randomElement()
 8. Равенство

 В Swift используйте оператор Equal To ==, чтобы увидеть, равны ли два массива. Если два массива содержат одни и те же элементы в одном и том же порядке, оператор Equal To возвращает логическое значение. Оператор возвращает true, если два массива равны, или false, если они не равны.

 arr1 == arr2 //true or false
 9. Найдите минимум

 var min = arr.min() //value if has min, nil if arr is empty
 10. Найдите максимум

 var max = arr.max() //value if has max, nil if arr is empty
 11. Удалить первые N элементов

 var result = arr.dropFirst(2)
 or
 var result = arr.dropFirst()
 12. Удалить последние N элементов

 var result = arr.dropLast(2)
 or
 var result = arr.dropLast()
 13.Сортировка в порядке возрастания массива Int

 arr.sort()
 14. Элементы фильтра на основе состояния

 let result = arr.filter { if statement }
 Например,

 let result = arr.filter { $0 > 2 }
 or
 let result = arr.filter { $0%2 == 0 }
 or
 let result = arr.filter { $0%2 == 1 }
 */


