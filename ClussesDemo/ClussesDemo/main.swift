//
//  main.swift
//  ClussesDemo
//
//  Created by Yan Shvyndikov on 28.07.2022.
//

// в классах нельзя без инициализации(init) создать перменную с пустым значением
// при записи var skeletron2 = skeletron1, skeletron2 ссылается на skeletron1
// то есть это два объкта ссылаются в один и они имеют одинаковые значения
// при структуре создается идентичный, но уже свой объект

import Foundation

let skelton1 = Enemy()
print(skelton.health)

let dragon = Dragon()
print(dragon.attackStrength)
dragon.wingSpan = 5
print(dragon.wingSpan)
dragon.talk(speech: "Siiiiiiiiiiii")
