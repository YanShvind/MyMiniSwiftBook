
// Синтаксис нескольких замыканий

func sequenced(first: () -> Void, second: () -> Void) {
    first()
    second()
}

sequenced {
    print("Hello, ", terminator: "")
} second: {
    print("world.")
}

// Замыкания без возвращаемого значения

let voidClosure = { () -> Void in
    print("Swift Apprentice is awesome!")
}
voidClosure()

// область видимости внешних переменных

var counter = 0

let incrementCounter = {
    counter += 1
}

incrementCounter()
incrementCounter()
incrementCounter()

print(counter)

// Эта функция не принимает никаких параметров и возвращает замыкание.
// Замыкание, которое он возвращает, не принимает параметров и возвращает Int.
func countingClosure() -> () -> Int {
    var counter = 0
    let incrementCounter = { () -> Int in
        counter += 1
        return counter
    }
    return incrementCounter
}

// Замыкание, возвращаемое этой функцией, будет увеличивать ее внутренний счетчик каждый раз, когда она вызывается.
// Каждый раз, когда вы вызываете эту функцию, вы получаете другой счетчик.
let counter1 = countingClosure()
counter1() // 1
counter1() // 2
counter1() // 3
counter1() // 4
counter1() // 5
print(counter1()) // 6

// Пользовательская сортировка с закрытиями

let names = ["ZZZZZZ", "BB", "A", "CCCC", "EEEEE"]

names.sorted() // ["A", "BB", "CCCC", "EEEEE", "ZZZZZZ"]

names.sorted {
    $0.count > $1.count // ["ZZZZZZ", "EEEEE", "CCCC", "BB", "A"]
}
