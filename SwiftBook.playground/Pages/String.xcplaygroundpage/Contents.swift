import Foundation

let str1 = "Hello"
str1.count // размер строки

// Графем-кластеры
let char: Character = "\u{E9}"
char // "é"
// рафем-кластер — это совокупность юникод-скаляров, при визуальном представлении выглядящих как один символ
let anotherChar: Character = "\u{65}\u{301}" // буква е + ударение
let thumbsUp = "\u{1f44d}"
let combine = "\u{1f44d}\u{1f3fd}"
let cafeSimple = "caf\u{E9}" // "café"
cafeSimple.count // 4

// строковые индексы
let name = "e\u{301}lastic" // "élastic"
let index = name.startIndex
let firstChar = name[index]
firstChar // "é"

// Подстроки (Substring)
let abc = "abcdefghijklmnopqrstuvwxyz"
let firstCharIndex = abc.startIndex // индекс первого символа
let fourthCharIndex = abc.index(firstCharIndex, offsetBy:3) // // индекс четвертого символа
let subAbc = abc[firstCharIndex...fourthCharIndex] // получим подстроку "abcd"
subAbc // теперь substring

