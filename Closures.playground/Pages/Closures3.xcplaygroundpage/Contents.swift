//: [Previous](@previous)

// Итерация по коллекциям с закрытиями

let values = [1, 2, 3, 4, 5, 6]
values.forEach {
    print("\($0): \($0*$0)")
}

var prices = [1.5, 10, 4.99, 2.30, 8.19]
let largePrices = prices.filter {
    $0 > 5
}

let largePrice = prices.first {
    $0 > 5
}

let pricesTest: [Double] = [1, 9, 18, 90, 100]

let salePrices = pricesTest.map {
    $0 * 0.9
}

let userInput = ["0", "11", "haha", "42"]
let numbers1 = userInput.map {
    Int($0)
}

// Если вы хотите отфильтровать недопустимые (отсутствующие) значения, вы можете использовать compactMap, например
let numbers2 = userInput.compactMap {
    Int($0)
}

let userInputNested = [["0", "1"], ["a", "b", "c"], ["#"]]
let allUserInput = userInputNested.flatMap {
    $0 // ["0", "1", "a", "b", "c", "#"]
}

let sum = prices.reduce(0) {
    $0 + $1
}
/*
 Начальное значение, представляющее общую сумму, равно 0.
 Замыкание вызывается для каждого элемента и возвращает текущую общую сумму плюс текущий элемент.
 Возвращаемое значение - это новая текущая сумма.
 Конечным результатом является общее количество всех значений в массиве.
 */

let stock = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0) {
    return $0 + $1.key * Double($1.value)
}

let firstTwo = prices.prefix(2)
let lastTwo = prices.suffix(2)
