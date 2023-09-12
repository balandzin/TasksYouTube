import UIKit

// Set

var set = Set<String>()
var listOfSports: Set = ["badminton", "bowling", "tennis", "hockey", "running"]

listOfSports.count
listOfSports.isEmpty
listOfSports.insert("fishing")
listOfSports.remove("bowling")
listOfSports.contains("running")

for sport in listOfSports.sorted(){
    print(sport)
}

var numbers: Set = [5, 1, 7, 34, 8]
for number in numbers.sorted(){
    print(number)
}

let colors1 = Set(["red", "green", "blue"])
let colors2 = Set (["red", "green", "blue", "red", "green" ])

var array = [1, 2, 3, 4, 1, 2, 3, 4]
var set1 = Set(array)
print(set1.sorted())

let oddNumbers: Set = [1, 3, 5, 7, 9]
let evenNumbers: Set = [0, 2, 4, 6, 8]
let primeNumbers: Set = [2, 3, 5, 7]
oddNumbers.union(evenNumbers).sorted()
oddNumbers.intersection(evenNumbers).sorted() //создает из общих элементов
oddNumbers.subtracting(primeNumbers).sorted() //из объектов не пересекающихся со вторым множестве
oddNumbers.symmetricDifference(primeNumbers).sorted() // которые не повторяются ни в одном из множеств












