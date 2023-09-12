import UIKit

//I. Два человека соревнуются в троеборье, которое состоит из подтягивания, подъёмов туловища и приседаний. Результаты записываются в виде кортежей отдельно для каждого игрока. За 1 подтягивание атлет получает 70 очков, за подьём туловища - 45 очков, а за приседание - 50 очков. Создайте такие кортежи и заполните их значениями. Определите победителя в состязании.

if true {
    
    let first = (podt: 23, press: 60, prised: 78)
    let second = (podt: 28, press: 64, prised: 72)
    
    func getResult(first:(Int, Int, Int), second: (Int, Int, Int)) {
        
        let res1 = 70 * first.0 + 45 * first.1 + 50 * first.2
        let res2 = 70 * second.0 + 45 * second.1 + 50 * second.2
        
        print("Первый: \(res1) очков\nВторой: \(res2) очков")
        
        if res1 > res2 {
            print("Победа ПЕРВОГО")
        } else {
            print("Победа ВТОРОГО")
        }
    }
    getResult(first: first, second: second)
}

//II. Данные об успеваемости учеников по математике хранятся в массиве кортежей в формате Фамилия - оценка. Требуется:
//1. Отсортировать массив по успеваемости в порядке от лучших оценок к худшим
//2. Отсортировать массив в обратом алфавитном порядке
//3. Сформировать массив проблемных учеников, у которых оценки ниже, чем «4»
//4. Найти средний балл в классе

if true {
    
    var gradesMath = [("Petrov", 4),
                      ("Sidorov", 8),
                      ("Ivanov", 9),
                      ("Aliev", 3),
                      ("Gadjiev", 10)]
    
    let resultMarks = gradesMath.sorted{ $0.1 > $1.1 }
    print(resultMarks)
    let resultAlphabet = gradesMath.sorted{ $0.0 > $1.0 }
    print(resultAlphabet)
    let worse = resultMarks.filter{$0.1 < 8}
    print(worse)
    var sum = 0
    var people = 0
    for element in gradesMath {
        sum += element.1
        people += 1
    }
    let srednee = Double(sum) / Double(people)
    print(srednee)
}

//III. Покупатель стоит на кассе с корзинкой продуктов. Корзинка представлена в виде массива. Элемент массива - кортеж, содержащий в себе название, цену и количество продукта данной позиции.
//1. Посчитайте стоимость продуктов в корзине.
//2. Определите, за какой из продуктов покупатель заплатит больше всего.
//3. Отсортируйте продукты в порядке убывания стоимости
//4. Преобразуйте корзину в массив строковых описаний в форме: Молоко - 3 шт. на 270 р.
if true {
    let cart: [(title: String, price: Int, count: Int)] = [
        (title: "Milk", price: 80, count: 4),
        (title: "Egs", price: 76, count: 2),
        (title: "Bred", price: 57, count: 2),
        (title: "Sweets", price: 352, count: 1),
        (title: "Apples", price: 89, count: 2)]
    
    //1. Посчитайте стоимость продуктов в корзине.
    var sum = 0
    for goods in cart {
        sum += goods.count * goods.price
    }
    
    print("стоимость продуктов в корзине - \(sum)")
    
    //2. Определите, за какой из продуктов покупатель заплатит больше всего.
    
    var maxMoneyForOne = 0
    var moneyForOne = Int.min
    var product = ""
    for goods in cart {
        moneyForOne = goods.count * goods.price
        if moneyForOne > maxMoneyForOne {
            maxMoneyForOne = moneyForOne
            product = goods.title
        }
    }
    print("Max sum for one product is \(maxMoneyForOne) for \(product.lowercased())")
    
    //3. Отсортируйте продукты в порядке убывания стоимости
    let sortMaxMin = cart.sorted{ first, second in
        first.count * first.price > second.price * second.count
    }
    print(sortMaxMin)
    
    //4. Преобразуйте корзину в массив строковых описаний в форме: Молоко - 3 шт. на 270 р.
    
    var strSort: [String] = []
    for goods in cart {
        strSort.append("\(goods.title) - \(goods.count) шт. на \(goods.count * goods.price) р.")
    }
    print(strSort)
}

if true {
    //IV. Данные о погоде летом за 2018, 2019, 2020, 2021 и 2022 годы представлены в виде массива. Элемент массива имеет вид (month: String, weather: [(temp: Int, rainy: Bool)]) , где month - название месяца, weather массив погоды за разные годы в этом месяце, temp - температура в Цельсиях, а rainy - показатель, дождливым был месяц или нет. Создайте такой массив и заполните его произвольными значениями.
    //Определите
    //2. Какой из месяцев лета по статистике самый дождливый
    
    let weatherData: [(month: String, weather: [(temp: Int, rainy: Bool)])] = [
        (month: "Июнь", weather: [(temp: 27, rainy: true),
                                  (temp: 29, rainy: false),
                                  (temp: 25, rainy: true),
                                  (temp: 26, rainy: true),
                                  (temp: 31, rainy: false)]),
        (month: "Июль", weather: [(temp: 34, rainy: false),
                                  (temp: 33, rainy: false),
                                  (temp: 34, rainy: true),
                                  (temp: 31, rainy: false),
                                  (temp: 29, rainy: false)]),
        (month: "Август", weather: [(temp: 24, rainy: true),
                                  (temp: 23, rainy: false),
                                  (temp: 24, rainy: true),
                                  (temp: 21, rainy: true),
                                  (temp: 26, rainy: true)])
    ]
    
var sumTemps = [0, 0, 0, 0, 0]
    
    for (_, month) in weatherData.enumerated() {
        for (yearIndex, year) in month.weather.enumerated() {
            sumTemps [yearIndex] += year.temp
        }
    }
    
    print(sumTemps)
}





                  
                  
                  

