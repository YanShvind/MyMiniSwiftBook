import Foundation

// создаем простой массив
let array1 = [0,1,2,3,4,5]
// создаем простой массив с помощью диапозона
let array2 = Array(0...10)
print(array2[6])

// создание массива с помощью Array
let array3 = Array(repeating: "Yan", count: 3)
print(array3[0], array3[1], array3[2])

// задаём явный тип массиву
let array4: [Int] = [1,2,3,4,5]
// создаем пустой массив
let array5: [Int] = []

// операции с массивами
let arrayTest1 = [1,2,3]
let arrayTest2 = [4,5,6]
let arrayResult = arrayTest1 + arrayTest2

// многомерные массивы
let arrayOfArrays = [[1,3], [1,4,5], [3,2,1]]
arrayOfArrays[1][1] // 4

// базовые свойства и методы массивов
var arrayTest3 = [1,2,3,4,5]
arrayTest3.count // 5
arrayTest3.isEmpty // false тк массив не пустой
arrayTest3.suffix(3) // сколько нужно получить элементов с конца [3,4,5]
arrayTest3.first // возвращает первый элемент массива
arrayTest3.last // возвращает последний элемент массива
arrayTest3.append(6) // добавляем элемент в конец массива
arrayTest3.insert(100, at: 3) // добавляем элемент и указываем куда
arrayTest3 // [1,2,3,100,4,5,6]
arrayTest3.remove(at: 3) // удаляем 3 элемент массива
arrayTest3.removeFirst() // удаляем первый элемент массива
arrayTest3.removeLast() // удуаляем последний элемент массива
arrayTest3 // [2,3,4,5]
// изначальный массив остается неизменным, мы присваиваем к новому массиву его
// и удаляем первые 3 элемента
let newArrayTest3 = arrayTest3.dropFirst(3)
arrayTest3.contains(2) // проверяем присутствует ли элемент в массиве
arrayTest3.min() // минимальное значение элемента
arrayTest3.max() // максимальное значение элемента
arrayTest3.reverse() // переворачиваем элементы массива
arrayTest3.sort() // сортируем по возрастанию и изменяем исходный массив
// при использовании sorted() исходный массив не изменяется 

// получаем случайный элемент массива
let arrayMoney = [100, 200, 300, 400, 500]
let randomMoneyElement = arrayMoney.randomElement()
