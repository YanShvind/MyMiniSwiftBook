
// AnyObject соответствует произвольному экземпляру любого класса;
// Any соответствует произвольному типу данных

// Any
// Благодаря псевдониму Any можно создавать хранилища неопределенного типа данных.
var things = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append("hello")
things.append((3.0, 5.0))
things.append({ (name: String) -> String in "Hello, \(name)" })
/*
 При запросе любого из элементов массива вы получите значение не того типа данных, который предполагался при установке конкретного значения, а типа Any.
 Псевдоним Any несовместим с протоколом Hashable, поэтому использование типа Any там, где необходимо сопоставление, невозможно. Это относится, например, к ключам словарей.
 */
// Рассмотрим пример, в котором разберем объявленный ранее массив поэлементно и определим тип данных каждого элемента
for thing in things {
    switch thing {
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Troll"))
default:
        print("something else")
    }
}
// Каждый из элементов массива преобразуется в определенный тип при помощи оператора as

// AnyObject
// Псевдоним AnyObject позволяет указать на то, что в данном месте должен или может находиться экземпляр любого класса.

// Объявим массив экземпляров с помощью псевдонима AnyObject
let someObjects: [AnyObject] = [Dog(), NoisyDog(), Dog()]

