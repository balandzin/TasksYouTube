import UIKit

var a = 12
var b = 17
func revers(_ num1:  inout Int,_ num2: inout Int){
    let temp = num1
    num1 = num2
    num2 = temp
}
revers(&a, &b)
print(a)
print(b)

var c = readLine() ?? ""
print(c)




