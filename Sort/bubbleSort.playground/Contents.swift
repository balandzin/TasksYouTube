import UIKit

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
