
/* Самое важное, чего позволяют достичь опционалы, — это исключение неоднозначности.
   Если значение есть, то оно есть, если его нет,
   то оно не сравнивается с нулем или пустой строкой, его просто нет. */

let possibleString = "1945"
let convertPossibleString = Int(possibleString) // 1945
let unpossibleString = "Одна тысяча сто десять"
let convertUnpossibleString = Int(unpossibleString) // nil
type(of: convertPossibleString)   // Optional<Int>.Type
type(of: convertUnpossibleString) // Optional<Int>.Type
type(of: possibleString) // String.Type
type(of: unpossibleString) // String.Type
// Функция Int(_:) не всегда возвращает опционал, а лишь в том случае,
// если в нее передано нечисловое значение.

var fuel: Int?
fuel = 20
print("\(fuel!) liters left") // ! - принудительное извлечение значения,
// ставится только при увернности, что значение есть

// опциональная привязка
/*
 Создаем константу только в том случае если fuel не равно nil
 */
if let availableFuel = fuel{
    print("\(fuel!) liters left")
}else{
    print("no data fuel avaible")
}
// проверка, если ни одно значение != nil, то:
var pointX: Int? = 10
var pointY: Int? = 3
if let x = pointX, let y = pointY {
   print("Точка установлена на плоскости")
}

// Проверка наличия значения в опционале
var fiveMarkCount: Int? = 8
var allCakesCount = 0;
// определение наличия значения
if fiveMarkCount != nil {
    // количество пирожных за каждую пятерку
    let  cakeForEachFiveMark = 2
    // общее количество пирожных
    allCakesCount = cakeForEachFiveMark * fiveMarkCount!
}
allCakesCount // 16

// Опциональное связывание как часть оптимизации кода
let coinsInNewChest = "140"
var allCoinsCount = 1301
/* проверяем существование значения
с использованием опционального связывания */
if let coins = Int(coinsInNewChest) {
    allCoinsCount += coins
} else {
    print("У нового дракона отсутствует золото")
}

// Оператор объединения с nil
let optionalInt: Int? = 20
var mustHaveResult = optionalInt ?? 0 // 20
