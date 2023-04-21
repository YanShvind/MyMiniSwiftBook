
/*
 Automatic Reference Counting (ARC) — это специальный механизм автоматиче- ского подсчета ссылок. Именно он подсчитывал количество входящих сильных ссылок на каждый объект и при возможности удалял неиспользуемые экземпляры.
 */

class Person{
    var name: String
    
    init(name: String) {
        self.name = name
        // print("\(name) создан в памяти")
    }
    deinit {
        // print("\(name) удален из памяти")
    }
}
var ref1: Person? // сильная ссылка
var ref2: Person?
var ref3: Person?

ref1 = Person(name: "Yan")

ref2 = ref1
ref3 = ref1
// пока все ссылки не уничтожим объект будет жить в памяти
ref1 = nil
ref2 = nil
ref3 = nil

// closure + ARC

var x = 10
var y = 20

let closure: () -> () = { [x] in // захватываем только 10
    print("\(x) \(y)")
}

let closure2: (Int) -> Int = { [x,y] (a: Int) -> Int in // в кв скобках фиксируем значение
    print("\(x) \(y)")
    return a
}

closure()
x = 30
y = 40
closure()

closure2(1)
