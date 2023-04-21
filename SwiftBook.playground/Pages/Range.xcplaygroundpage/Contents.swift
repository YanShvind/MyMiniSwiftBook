import Foundation

// создадим диапазоны
let rangeTest1 = 1...5 // 1,2,3,4,5
let rangeTest2 = 1..<5 // 1,2,3,4
// если необходимо ограничить диапазон справа
let rangeTest3 = ..<5

// постфиксная форма оператора
let infRange1 = 2...
let collections = [1,21,45,67,8,9,32,345,0] // массив
print(collections[infRange1])
// постфиксная форма оператора
let infRange2 = ...2
print(collections[infRange2])

// базовые свойства и методы
let rangeTest4 = 1...10
rangeTest4.count // определяем кол-во элементов
rangeTest4.contains(2) // проверяем наличие элемента
rangeTest4.isEmpty // проверяем наличие элементов
// min и max работает только с целочисленными значениями
rangeTest4.min()
rangeTest4.max()

// проверяем на эквивалентность
let range1 = 1...3
let range2 = 1...3
range1 == range2
