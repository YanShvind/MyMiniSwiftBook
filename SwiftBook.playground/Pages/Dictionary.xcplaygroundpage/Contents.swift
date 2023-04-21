import Foundation

// каждый элемент словаря — это пара «ключ — значение»
// Идея словарей в том, чтобы использовать уникальные произвольные ключи для доступа к значениям
// При этом, как и во множествах, порядок следования элементов не важен.

let dictionary = ["one": "1", "two": "2", "three": "3"]
// базовая коллекция кортежей (пар значений)
let baseCollection = [(2, 5), (3, 6), (1, 4)]
// создание словаря на основе базовой коллекции
let newDictionary = Dictionary(uniqueKeysWithValues: baseCollection)

// Словарь с типом данных [Int:String]
let codeDesc = [200: "success", 300: "warning", 400: "error"]

// взаимодействие с элементами словаря
var nameDict = ["Y": "Yan", "R": "Roma", "I": "Ivan", "N": "Nekryz"]
let yanName = nameDict["Y"]
nameDict["N"] = "Lox" // теперь вместо Некруза - лох
// удалим элемент
nameDict.removeValue(forKey: "N") // ["Y": "Yan", "R": "Roma", "I": "Ivan"]
// добавим элемент
nameDict.updateValue("Maria", forKey: "M") // ["R": "Roma", "M": "Maria", "Y": "Yan", "I": "Ivan"]

// пустой словарь
let emptyDictionary: [String:Int] = [:]

// Базовые свойства и методы словарей
var someDictionary = ["One": 1, "Two": 2, "Three": 3]
someDictionary.count // кол-во элементов в словаре
someDictionary.isEmpty // пустой ли словарь
let keys = someDictionary.keys // все ключи словаря
let valyes = someDictionary.values // все значения словаря

