
// The swift dev

// вместо ! используем ?
// если значение = nil, прогорамма не будет сыпаться, просто верет nil

class Adress{
    let street = "Дыбенко"
    let number = 16
}

class Home{
    let adress = Adress()
    let room: Int? = 3
    var parking: Parcing? = Parcing()
    
    func printRooms(){
        print("The number of rooms is \(room)")
    }
}

struct Parcing{
    var carPlase = 5
}

class Parents{
    var cars: [String]? = ["Porshe"]
    var home: Home? = Home()
}

let parents = Parents()

parents.cars
parents.home?.parking?.carPlase

// меняем carPlace
if(parents.home?.parking?.carPlase = 7) != nil{
    print("property установлено")
}else{
    print("property ne установлено")
}

// c методами
if(parents.home?.printRooms()) != nil{
    print("комнату уже можно печатать")
}else{
    print("комнату уже нельзя можно напечатать")
}
