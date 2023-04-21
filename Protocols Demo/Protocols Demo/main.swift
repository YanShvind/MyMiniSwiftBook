//  Created by Yan Shvyndikov on 01.08.2022.

// В структуру можно "наследовать" протокол, как и в класс
// но класс в структуру нельзя, лишь протокол
// если нужно использовать один метод и в нем что-то менять
// на помощь идут протоколы

protocol CanFly{
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg(){
        if isFemale{
            print("The bird makes a new bird")
        }
    }
}

class Eagle: Bird, CanFly{
    func fly() {
        print("The eagles flaps its wings")
    }
    
    func soar(){
        print("The eagle glides in the air")
    }
}

class Penguin: Bird{
    func swim(){
        print("The penguin paddles")
    }
}

struct FlyingMuseum{
    func flyingMuseum(flyingObject: CanFly){
        flyingObject.fly()
    }
}

struct AirPlane: CanFly{
    func fly() {
        print("The airplane uses its engine")
    }
}

let myEagle = Eagle()
myEagle.fly()

let myPenguin = Penguin()
myPenguin.swim()
myPenguin.layEgg()

let myPlane = AirPlane()
myPlane.fly()

let museum = FlyingMuseum()
museum.flyingMuseum(flyingObject: myEagle) // сюда могу вставить только тех у кого протокол CanFly
