import UIKit

//Dictionary Словари
//Dictionary<Key, Value> // [Key: Value]

var dictionary = [Int: String]()

var heights = ["Ian": 1.75, "Maria": 1.76, "Igor": 1.82, "Olga": 1.56]
heights["Ian"]

var results = ["Math": 100, "English": 85, "Geographi": 75]
results.count
results.isEmpty
results["History"] = 80
results["Math"] = 90
results.updateValue(70, forKey: "History") //изменяет существующее значение или добавляет если такой пары не было
results.updateValue(50, forKey: "Geometry")
results.removeValue(forKey: "Math")

for(subject, point) in results {
    print("\(subject): \(point)")
}

for subject in results.keys {
    print("Subject: \(subject)")
}

var keys = Array(results.keys)
var values = Array(results.values)

if true {
    
    
    let typeOfTea = ["green": 7, "black": 6, "fruit": 9]
    let order = ["GrEEn", "BlACk", "GrEEn", "FrUiT", "BlACk"]

    func orderOfTea (order: [String], list: [String: Int]) {
        var order = order
        var list = list
        var resultTuple: (Int, String, Int)
        //var order = order.forEach{ $0.lowercased() }
        print(order)
        var count = 1
        for tea in order {
            var i = tea.lowercased()
            for (key, value) in list {
                if i == key {
                    resultTuple = (count, key, value)
                    print(resultTuple)
                    count += 1
                }
            }
        }
    }

    orderOfTea(order: order, list: typeOfTea)

}


let startArray = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]
let resultArray = startArray.compactMap { $0 }
print(resultArray)


// MARK: Задачи Скутаренко

if true {
    
}

