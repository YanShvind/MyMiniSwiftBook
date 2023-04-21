import Foundation

// утверждения
let strName = "Дракон"
let strYoung = "молод"
let strOld = "стар"
let strEmpty = " "
var dragonAge = 230
assert( dragonAge <= 235, strName+strEmpty+strOld )
assert( dragonAge >= 225, strName+strEmpty+strYoung )
print("Программа успешно завершила свою работу")

// Оператор условия if
let userName = "Alex"
if userName == "Alex" {
    print("Привет, администратор")
} else {
    print("Привет, пользователь")
}
// переменные типа Bool
var firstLogicVar = true
var secondLogicVar = false
// проверка значения переменных
if firstLogicVar && secondLogicVar {
    print("Обе переменные истинны")
} else {
    if firstLogicVar || secondLogicVar {
        print("Только одна из переменных истинна")
    } else {
        print("Обе переменные ложны")
    }
}
// Расширенный синтаксис оператора if
let people = 6
var arenda = 0
var allPrice = 0
if people<5{
    arenda = 1000
}else if people >= 5 && people<=7{
    arenda = 800
}else if people > 7{
    arenda = 500
}
allPrice = people * arenda
// с использовнаием диапозонов
// количество жильцов в доме
var tenantCount = 6
// стоимость аренды на человека
var rentPrice = 0
if (..<5).contains(tenantCount) {
    rentPrice = 1000
} else if (5...7).contains(tenantCount) {
    rentPrice = 800
} else if (8...).contains(tenantCount) {
        rentPrice = 500
}

// Тернарный оператор условия
let a = 1
let b = 2
// сравнение значений констант
a <= b ? print("A меньше или равно B") : print("A больше B")
// с возвращаемым значением
// переменная типа Int
var height = 180
// переменная типа Bool
var isHeader = true
// вычисление значения константы
let rowHeight = height + (isHeader ? 20 : 10 )
// вывод значения переменной
rowHeight // 200
let a1 = Int.random(in: 1...100)
let b1 = Int.random(in: 1...100)
if a > 50 && b > 50 {
    print("a and b > 50")
}
