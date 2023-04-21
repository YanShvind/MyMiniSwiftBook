import Foundation

// _ символ игнорирования

// Объявим константу и проинициализируем ей кортеж
// Состоящий из 3-ех элементов типов Int, String, bool
let myProgramStatys = (200, "In work", true)

// записываем значения кортежа в переменные
let (statusCode, statusText, statusConnect) = myProgramStatys
print("Код ответа - \(statusCode)")
print("Текст ответа - \(statusText)")
print("Связь с сервером - \(statusConnect)")

print()
// объявляем две перменные с одновременной инициализацией им значений
var (myName, myAge) = ("Yan", 16)
print("My name is \(myName), I am \(myAge) years old")

print()
// Запишем значение только первого элемента, остальные проигнорируем
let (name,_,_) = ("Elena", 16, "Programmer")
print(name)

print()
// доступ к элементам кортежа через точку
print("Код ответа - \(myProgramStatys.0)")
print("Текст ответа - \(myProgramStatys.1)")
print("Связь с сервером - \(myProgramStatys.2)")

print()
// доступ к элементам кортежа через имена
let statusTaple = (statusCode: 300, statusText: "On work", statusConnect: false)
print("Код ответа - \(statusTaple.statusCode)")
print("Текст ответа - \(statusTaple.statusText)")
print("Связь с сервером - \(statusTaple.statusConnect)")

print()
// редактирование кортежа
var tupleTest1 = ("Elena", 17)
let tupleTest2 = ("Yan", 16)
tupleTest1 = tupleTest2
print(tupleTest1.0, tupleTest1.1)
// по отдельным элементам
var someTuple = (700 ,true)
someTuple.0 = 100
someTuple.1 = false
print(someTuple.0, someTuple.1)



