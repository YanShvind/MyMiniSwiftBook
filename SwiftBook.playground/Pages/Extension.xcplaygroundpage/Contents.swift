
/*
 Расширения (extension) позволяют добавить новую функциональность к уже существующему объектному типу (классу, структуре, перечислению) или протоколу.
 */

// Int

extension Int{
    var squared: Int{
        return(self * self)
    }
}
var newInt = 30
newInt.squared
20.squared

// class

class Vova{
    var nick = "The Swift dev"
}
let realVova = Vova()
realVova.nick

extension Vova{
    func allSelf() -> String{
        return "My name is Vova, my nick - \(nick)"
    }
}
var secondVova = Vova()
secondVova.allSelf()

// get set

extension Double {
    var asFT: Double {
get {
            return self / 0.3048
        }
        set(newValue) {
            self = newValue * 0.3048
        }
} }
var distance: Double = 100 // расстояние 100 метров
distance.asFT // расстояние 100 метров в футах - 328.08 фута
// установим расстояние в футах, но оно будет сохранено в метрах
distance.asFT = 150 // 45.72 метра
