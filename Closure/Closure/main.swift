//
//  main.swift
//  Closure
//
//  Created by Yan Shvyndikov on 19.09.2022.
//

/*
 Используются, когда необходимо сгруппировать блок кода для его передачи или многократного использования. В отличие от функций, замыкания не имеют имени.
 */
 
var sum: (_ numOne: Int, _ numTwo: Int) -> Int = {
$0 + $1 }
print(sum(10, 34)) // 44

//

var closure: (_ numOne: Int) -> Int = {
    if $0 % 2 != 0{
        return 0
    }else{
        return $0
    }
}
print(closure(10))

//

let array = [3, 2, 5, 67, 3]

func addOne (n1: Int) -> Int{
    return n1 + 1
}

print(array.map(addOne(n1:)))

// делаем замыкание
// 1. Удаляем слово func и ее название
// 2. Переносим фигурную скобку в самое начало
// 3. Вместо фигурной скобки ставим слово in
// 4. Вместо функции вставляем наше замыкание

/*
{ (n1: Int) -> Int in
    return n1 + 1
}*/

print(array.map({(n1: Int) -> Int in
    return n1 + 1
}))
// cокращение
print(array.map{$0 + 1})
