import UIKit

let shops: [String: Double] = ["shop1":  21000, "shop2":  35000, "shop3":  12000, "shop4":  32000, "shop5":  15000]

func filterShops(shops: [String: Double], filter: (Double) -> Bool) -> [String: Double] {
    var filteredShops = [String: Double]()
    for (key, value) in shops {
        if filter(value) {
            filteredShops[key] = value
        }
    }
    return filteredShops
}


let shopsLowProfit = filterShops(shops: shops, filter: { (p: Double) -> Bool in
    p < 20000
})
print(shopsLowProfit)


let shopsHighProfit = filterShops(shops: shops) {
    $0 > 20000
}
print(shopsHighProfit)

//----------------------------------------------------------------
var digits = [1, 3, 6, 3, 2, 45, 7, 4, 6, 8, 4, 7, 8, 9]
//digits.sort()
digits.sort (by: >)
print(digits)
//----------------------------------------------------------------

// передача замыкания в переменную
let test = { (k: Int) -> String in
    let a = String(k * 12)
    print(a)
    return a
}
test(11)

// передача замыкания в функцию
//
func result(number: Int, operation: (Int) -> String) {
    print(operation(number))
}

//let multiply12 = { (k: Int) -> String in
//    let a = String(k * 12)
//    print("result is \(a)")
//    return a
//}

//let multiply12 = { String($0 * 12) }

result(number: 1000) { String($0 * 12) }

//------------------------------------------------

func multiply16 (number: Int, operation: (Int) -> String) -> String{
    operation(number)
}

let c = multiply16(number: 19) { (a) -> String in
    var b = a
    b += 12
    b *= 16
    return String(b)
}
print(c)

//------------------------------------------------


func bubbleSort (array: [Int], operation: ([Int]) -> Void) {
    operation(array)
}
var array = [1, 3, 6, 8, 4, 2, 6, 8, 9, 2, 4, 6, 75, 45, 34, 1, 79]

bubbleSort(array: array) { arr in
    var arrSort = arr
    
    for i in 0..<arrSort.count - 1 {
        for j in (0...arrSort.count - 2 - i) {
            if arrSort[j] > arrSort[j + 1] {
                var temp = arrSort[j]
                arrSort[j] = arrSort[j + 1]
                arrSort[j + 1] = temp
            }
        }
    }
    
    print(arrSort)
}




































