import Foundation

// множества (Set)
// нет четкого порядка следования элементов
// каждый элемент должен быть уникальным

// чтобы не создать массив, можно делать так:
var mySet: Set = [1,2,3,4,5]
// пустое множество
let emptySet = Set<String>()

// базовые свойства и методы множеств
mySet.insert(6) // возвращается кортеж, успех добавления, само добавление
mySet.remove(1) // удаляем единицу
mySet.removeAll() // удаляем все элементы
// проверяем присутствие значения во множестве
var namesSet: Set = ["Yan", "Roman", "Leonid"]
namesSet.contains("Yan") // true
namesSet.contains("Volodya") // false
namesSet.count // размер значений

// операции со множествами
let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let differentDigits: Set = [3,4,7,8]
// получить все общие элементы
let inter = differentDigits.intersection(oddDigits)
// получить все не общие элементы
let exclusive = differentDigits.symmetricDifference(oddDigits)
// объединяющий метод
let union = evenDigits.union(oddDigits)
// все элементы первого множества, которые не входят во второе
let subtract = differentDigits.subtracting(evenDigits)

// отношения множеств
let aSet: Set = [1,2,3,4,5]
let bSet: Set = [1,3]
let cSet: Set = [5,6,7,8]
// является ли одно множество подмножеством другого
bSet.isSubset(of: aSet)
// вычисляет, является ли множество надмножеством для другого
aSet.isSuperset(of: bSet)
// существуют ли в двух множествах общие элементы
bSet.isDisjoint(with: cSet)
// является множество подмножеством или надмножеством, не равным указанному множеству
bSet.isStrictSubset(of: aSet) 
aSet.isStrictSuperset(of: bSet)


