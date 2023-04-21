
/*
 При запросе значения свойства perimeter происходит выполнение кода в геттере, который генерирует возвращаемое значение с учетом значения свойства radius. При инициализации значения свойству perimeter срабатывает код из сеттера, который вычисляет и устанавливает значение свойства radius.
 */

// Если мы не инициализируем значение срабатывает геттер
// Если мы инициализируем значение срабатывает сеттер

struct Circle {
    var coordinates: (x: Int, y: Int)
    var radius: Float
    var perimeter: Float {
        get {
            // высчитаем значение, используя текущее значение радиуса
            return 2.0 * 3.14 * radius
        }
        set(newPerimeter) {
            // изменим текущее значение радиуса
            radius = newPerimeter / (2 * 3.14)
        }
    }
}
var myNewCircle = Circle(coordinates: (0,0), radius: 10)
myNewCircle.perimeter // выводит 62.8
myNewCircle.perimeter = 31.4
myNewCircle.radius // выводит 5

struct YanSalary{
    var salary1: Float
    var salary2: Float
    var difference: Float{
        get{
            return salary2 - salary1
        }
        set(newDiff){ // newDiff - задается при инициализации
            salary2 = newDiff - salary1
        }
    }
}
var Yan = YanSalary(salary1: 100, salary2: 200)
Yan.salary1
Yan.salary2
Yan.difference // 100
Yan.difference = 300
Yan.salary2 // 200
