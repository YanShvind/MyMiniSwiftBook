/* Инициализатор (конструктор) — это специальный метод, выполняющий подготовительные действия при создании экземпляра объектного типа данных. Инициализатор срабатывает при создании экземпляра, а при его удалении вызывается деинициализатор. */
// в инициализатор нужно записать обязательно каждое значение

import Darwin

class Student1{
    var firstName: String
    var lastName: String
    
    var fullName: String{
        return firstName + " " + lastName
    }
    init (){
        firstName = ""
        lastName = ""
    }
}

class Student2{
    var firstName = ""
    var lastName = ""
}

class Student3{
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.lastName = lastName
        self.firstName = firstName
    }
}


let student1 = Student1()
let student2 = Student2()
let student3 = Student3(firstName: "Yan", lastName: "Shvyndikov")

// //////////////

// допустим если у нас 5 параметров и мы не знаем три, нужно поставить дефолтные значения
// для этого нужен convenience инициализатор, который будет принимать только изветные нам значения

class Human{
    var weight: Int
    var age: Int
    
    init(weight: Int, age: Int){
        self.weight = weight
        self.age = age
    }
    convenience init(age: Int){
        self.init(weight: 0, age: age)
    }
    convenience init(weight: Int){
        self.init(weight: weight, age: 0)
    }
    convenience init(){
        self.init(weight: 0)
    }
}

let h1 = Human(weight: 64, age: 16)
let h2 = Human(age: 16)
let h3 = Human(weight: 64)
let h4 = Human()

class Student: Human{
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.lastName = lastName
        self.firstName = firstName
        super.init(weight: 0, age: 0)
        self.weight = 64
    }
    override init(weight: Int, age: Int) {
        self.lastName = ""
        self.firstName = ""
        super.init(weight: weight, age: age)
    }
    
    convenience init(firstName: String) {
        self.init(firstName: firstName, lastName: "")
        self.age = 16
    }
}

let student = Student(firstName: "Yan")

// Переопределение родительских инициализаторов

class Doctor: Student{
    // если не задать значение fieldOfStudy, то все инициализаторы родит. класса теряются и для этого мы их переопределяем

    var fieldOfStudy: String
    
    init(fieldOfStudy: String) {
        self.fieldOfStudy = fieldOfStudy
        super.init(firstName: "Doctor", lastName: "House")
    }
    override init(firstName: String, lastName: String) {
        self.fieldOfStudy = "Health"
        super.init(firstName: firstName, lastName: lastName)
    }
    override init(weight: Int, age: Int) {
        self.fieldOfStudy = ""
        super.init(weight: weight, age: age)
    }
    
    /*
    convenience override init(fieldOfStudy) {
        self.init(firstName: "Doctor", lastName: "House")
        self.fieldOfStudy = fieldOfStudy
    }*/
}

let d1 = Doctor(fieldOfStudy: " ")
let d2 = Doctor(firstName: "", lastName: "")
let d3 = Doctor(firstName: "")
let d4 = Doctor(weight: 64)
