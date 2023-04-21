import Foundation

//  Оператор ветвления switch
let userMark = 4
// переменная для хранения сообщения
let message: String
switch userMark {
case 1:
    message = "Единица на экзамене! Это ужасно!"
case 2:
    message = "С двойкой ты останешься на второй год!"
case 3:
    message = "Ты плохо учил материал в этом году!"
case 4:
    message = "Неплохо, но могло быть и лучше"
case 5:
    message = "Бесплатное место в университете тебе обеспечено!"
default:
    message = "Переданы некорректные данные об оценке"
}
// Диапазоны в операторе switch
switch userMark {
case 1..<3:
    print("Экзамен не сдан")
case 3:
    print("Требуется решение дополнительного задания")
case 4...5:
    print("Экзамен сдан")
default:
    assert(false, "Указана некорректная оценка") // функция assert(_:_:) прекратит работу приложения в любом случае, если она была вызвана
}
// Кортежи в операторе switch
let dragonCharacteristics: (color: String, weight: Float) = ("красный", 1.4)
switch dragonCharacteristics {
    case ("зеленый", 0..<2 ):
        print("Вольер No 1")
    case ("красный", 0..<2 ):
        print("Вольер No 2")
    case ("зеленый", 2...), ("красный", 2...):
        print("Вольер No 3")
    default:
        print("Дракон не может быть принят в стаю")
}
// Ключевое слово fallthrough
let level: Character = "Б"
// определение уровня готовности
switch level {
case "А":
        print("Выключить все электрические приборы ")
        fallthrough
    case "Б":
        print("Закрыть входные двери и окна ")
        fallthrough
    case "В":
        print("Соблюдать спокойствие")
    default:
        break
}
