
// Наблюдатели

struct Circle {
    var coordinates: (x: Int, y: Int)
    // var radius: Float
    var radius: Float {
        willSet (newValueOfRadius) {
            print("Вместо значения \(radius) будет установлено значение \(newValueOfRadius)")
        }
        didSet (oldValueOfRadius) {
            print("Значение \(oldValueOfRadius) изменено на \(radius)")
        }
    }
    var perimeter: Float {
get {
            return 2.0 * 3.14 * radius
        }
set {
            radius = newValue / (2 * 3.14)
        }
    }
}
var myNewCircle = Circle(coordinates: (0,0), radius: 10)
myNewCircle.perimeter // выводит 62.8
myNewCircle.perimeter = 31.4
myNewCircle.radius // выводит 5

