import UIKit


protocol ICanBuyIt {
    var label: String { get set }
    var price: Int { get set }
}

struct Milk: ICanBuyIt {
    var label: String
    var price: Int
}

class Book: ICanBuyIt {
    var label: String
    var price: Int
    var amount: Int
    
    init(label: String, amount: Int, price: Int) {
        self.label = label
        self.amount = amount
        self.price = price
    }
}

struct Bread : ICanBuyIt{
    var color: [String]
    var label: String
    var price: Int
}

func buy(_ item: ICanBuyIt) {
    print("I'm buying \(item.label). It cost me \(item.price)")
}






