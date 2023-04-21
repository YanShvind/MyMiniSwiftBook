import Foundation

//  Операторы повторения while и repeat while
// начальное значение
var i = 1
// хранилище результата сложения
var resultSum = 0
// цикл для подсчета суммы
while i <= 10 {
    resultSum += i
i += 1 }
// Использование оператора continue
var x = 0
var sum = 0
while x <= 10 {
    x += 1
    if x % 2 == 1 {
        continue
    }
sum += x }

// Оператор повторения for
// массив целых чисел
let numArray: Array<Int> = [1, 2, 3, 4, 5]
// в данной переменной будет храниться
// сумма элементов массива numArray
var result: Int = 0
// цикл подсчета суммы
for number in numArray {
    result += number
}
for number in 1...5 {
    print(number)
}
print()
for _ in 1...3 {
    print("Повторяющаяся строка")
}
print()
// словарь
var countriesAndBlocks = ["Россия": "СНГ", "Франция": "ЕС"]
for (countryName, orgName) in countriesAndBlocks {
    print("\(countryName) вступила в \(orgName)")
}
// от. до. с шагом.
var result1 = 0
for i in stride( from: 1, through: 1000, by:2 ) {
    result1 += i
}
result1 // 250000
// Использование where в конструкции for-in
// where - дополнительное условие
var result2 = 0
for i in 1...10 where i % 2 == 0 {
result2 += i }
result2 // 30
print()
// словарь с результатами игр
let resultsOfGames = ["Red Wings": ["2:1","2:3"],
"Capitals": ["3:6","5:5"],"Penguins": ["3:3","1:2"]]
// обработка словаря
for (teamName, results) in resultsOfGames {
    // обработка массива результатов игр
    for oneResult in results {
        print("Игра с \(teamName)  — \(oneResult)")
    }
}
print()
// Использование continue в конструкции for-in
for i in 1...10 {
    if i % 2 == 0 {
        continue
    } else {
print(i) }
}
print()
// Использование break в конструкции for-in
for i in 1... {
    let randNum = Int(arc4random_uniform(100))
    if randNum == 5 {
        print("Итерация номер \(i)")
    break }
    }
// цикл будет выполняться до тех пор, пока не будет выполнено условие достижения break,
// то есть пока randNum не станет равно 5.
