
// -> обозначает возвращаемое значение

// Простейшая ф-ция
func sayHello(){
    print("Hello Yan")
}
sayHello()

// Внешние имена входных параметров
func sumTwoInt(num1 a: Int, num2 b: Int) {
    print("Результат операции - \(a+b)")
}
sumTwoInt(num1: 10, num2: 12)
// при вызове ф-ции нет имен
func sumTwoInt(_ a: Int, _ b: Int) {
    print("Результат операции - \(a+b)")
}
sumTwoInt(10, 12)

// func с одним параметром
func oneParam(param:Int){
    var param = param
    param+=1
}
oneParam(param: 10)

// ф-ция с возвращающим значением
func returnValue()->Int{
    let c = 10
    return c
}
let a = returnValue()

// ф-ция принимающая несколько параметров и возвращ значение
func giveMeYour(name: String, secondName: String)-> String{
    return "Your full name is \(name) \(secondName)"
}
giveMeYour(name: "Yan", secondName: "Shvyndikov")

// ф-ция принимающая массив в качестве параметра
// и использующая вложенную ф-цию для работы
func calcMoney(array:[Int])->Int{
    var sum = 0
    func sayMoney(){
        print(sum)
    }
    for item in array{
        sum += item
    }
    sayMoney()
    return sum
}
calcMoney(array: [2,4,12,12,3243,4])

// ф-ция, которая принимает переменное число параметров
// внутренее и внешнее имя. ofIntegers при чтении,integers при использовании
func findSum(ofIntegers integers: Int...)->Int{
    var sum = 0
    for i in integers{
        sum += i
    }
    return sum
}
findSum(ofIntegers: 6,7,8,9,10)

// имена параметров ф-ции
func sum(_:Int)->Int{
    return 10
}

// ф-ции в качестве возвращаемого значения
// ф-ция в ф-ции
func whatToDo(missed: Bool)->((Int)->Int){
    func missCountUp(input:Int)->Int{return input + 1}
    func missCountDown(input:Int)->Int{return input - 1}
    return missed ? missCountUp : missCountDown
}
var missCount = 0
missCount = whatToDo(missed: true)(missCount)
