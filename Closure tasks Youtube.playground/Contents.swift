import UIKit

//1. Реализовать три замыкания, которые принимают два числа и возвращают Bool.
//Первое вычисляет, может ли первое число быть нацело поделено на второе. Второе вычисляет, имеют ли они хотя бы один общий делитель, отличный от 1 и самих этих чисел. Третье вычисляет, чётная ли сумма этих двух чисел. Реализуйте функцию, которая принимает два числа и такого типа замыкание, внутри себя реализует его и возвращает результат в виде будимого значения
if true {
    let isDevide = { (num1: Int, num2: Int) -> Bool in
        num1 % num2 == 0
    }
    
    let isHaveCommonDevider = {(num1: Int, num2: Int) -> Bool in
        for i in 2..<num1 {
            if num1 % i == 0 && num2 % i == 0 {
                return true
            }
        }
        return false
    }
    
    let isSumOdd = {(num1: Int, num2: Int) -> Bool in
        (num1 + num2) % 2 == 0
    }
    
    func twoNumsCheck (_ number1: Int, _ number2: Int, operation: (Int, Int) -> Bool) -> Bool {
        let res = operation(number1, number2)
        return res
    }

twoNumsCheck(12, 6, operation: isDevide)
twoNumsCheck(12, 6, operation: isHaveCommonDevider)
twoNumsCheck(12, 5, operation: isSumOdd)
}

//2. Составить замыкание для поиска четырехзначных чисел, которые при делении на 133 дают
//в остатке 125, а при делении на 134 дают в остатке 111

if true {
    
    let fourPlaceNumber = {() -> [Int] in
        var array = [Int]()
        for i in  1000...9999 {
            if i % 133 == 125 && i % 134 == 111 {
                array.append(i)
            }
        }
        print(array)
        return array
    }
    
    func getFourPlaceNumber (operation: () -> [Int]) -> Void {
        operation()
    }
    
    getFourPlaceNumber(operation: fourPlaceNumber)
}

//3. Даны два слова. Создать замыкание, которая определит, можно ли из букв первого из них получить второе. Каждая буква второго слова должна входить в первое слово столько же раз или меньше, чем и во втором.

if true {
    
    let isWord = {(word1: String, word2: String) -> Bool in
        let word1 = word1.lowercased()
        let word2 = word2.lowercased()
        if word1.isEmpty || word2.isEmpty || word1.count < word2.count {
            print("Не верно указаны слова")
            return false
        } else if word1.contains(word2){
            return true
        } else {
            return false
        }
    }
    
    func check(word1: String, word2: String, operation: (String, String) -> Bool) -> Bool {
        operation(word1, word2)
    }
    
    check(word1: "qwer", word2: "qwert", operation: isWord)
}

//4. Создать функцию, которая принимает в себя строку и замыкание типа (String) -> (Bool), реализующую внутри себя принятое замыкание и печатающую результат в консоль. Создать замыкания типа (String) -> (Bool):
//Проверяет, чётное ли количество символов в строке, за исключением пробелов
//Проверяет, является ли строка палиндромом (читается в в прямом и обратном порядке одинаково)
//- Проверяет, есть ли в строке символы кроме букв и пробелов
//Вызвать функцию, протестировав её с разными строками и замыканиями


if true {
    func check(string: String, operation: (String) -> Bool) {
        print(operation(string))
    }
    
    let isEven = {(string: String) -> Bool in
        let string = string
        var sum = 0
        for char in string {
            if char != " " {
                sum += 1
            }
        }
        return sum % 2 == 0
    }
    
    let isPolindrom = {(string: String) -> Bool in // ПОЛИНДРОМ
        var string = string.lowercased()
        var chars = [Character]()
        
        string.forEach{char in chars.append(char)}
        for (index, char) in chars.enumerated() {
            if !(char == chars[chars.count - 1 - index]) {
                return false
            }
        }
        return true
    }
    
    let otherSymbols = {(string: String) -> Bool in
        for char in string {
            if !(char.isLetter || char.isWhitespace) {
                return true
            }
        }
        return false
    }
    
    check(string: "q w e r tyy u i", operation: isEven)
    check(string: "Poтop", operation: isPolindrom)
    check(string: " a w d f -", operation: otherSymbols)
}

//5. Реализовать функцию, принимающую в себя дробное число Double и возвращающую дробное число. Создать замыкания типа (Double) -> Double:
//- Вычисляет и возвращает площадь граней куба со стороной, переданной в качестве параметра
//- Вычисляет периметр квадрата со стороной, переданной в качестве параметра
//- Вычисляет объём шара с радиусом, переданным в качестве параметра
//- Вычисляет площадь сферы с диаметром, переданным в качестве параметра
//Если в функцию передано отрицательное число, поменять знак на противоположный (взять число по модулю)
//Вызвать функцию, протестировав её с разными числами и замыканиями

if true {
    
    let cubeArea = {(number: Double) -> Double in
        number * number * 6
    }
    
    let perimeter = {(number: Double) -> Double in
        number * 4
    }
    
    let ballSquare = {(number: Double) -> Double in
        Double.pi * pow(number, 2)
    }
    
    func chech(number: Double, operation: (Double) -> Double) -> Double {
        operation(number)
    }
    
    chech(number: 3, operation: cubeArea)
    chech(number: 3, operation: perimeter)
    chech(number: 3, operation: ballSquare)

}
