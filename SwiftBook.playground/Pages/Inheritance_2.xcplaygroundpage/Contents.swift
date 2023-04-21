
// инкапсуляция
/*
 private
 Данный модификатор позволяет использовать объект только в пределах конструкции, в которой он объявлен. Например, объявленное в классе свойство или метод не будут доступны извне или в его расширениях.
 */
 
/*
 
 public
 класс, имеющий уровень доступа public (или более строгий), может иметь подклассы только в том модуле, где был объявлен;
 Элементы класса, имеющие уровень доступа public (или более строгий), могут быть переопределены (с помощью оператора override) в подклассе только в том модуле, где объявлен сам класс.

 */
/*
 
 final
 Swift позволяет защитить реализацию класса целиком или его отдельных элементов. Для этого необходимо использовать превентивный модификатор final, который указывается перед объявлением класса или его отдельных элементов.
 При защите реализации класса его наследование в другие классы становится невозможным. Для элементов класса их наследование происходит, но переопределение становится недоступным.
 */

//По умолчанию все объекты имеют уровень доступа internal. Для того чтобы из- менить его, необходимо явно указать требуемый уровень.

class Boys{
    public var firstName = "Yan"
    private var lastName = "Stecha" // не будет виден при наследовании
    func printHi(){
        print("Hi")
    }
}

class Gerls: Boys{
    
}

let gerls = Gerls()
//gerls.lastName - не могу использовать тк он private

print()
// полиморфизм
// берем все объекты по какoму-то одному общему признаку
class General{
    func methodHi(){
        print("Hello, General")
    }
}
class People1: General{
    override func methodHi() {
        print("Hi people1")
    }
}
class People2: General{
    override func methodHi() {
        print("Hi people2")
    }
}
let general = General()
let people1 = People1()
let people2 = People2()

var array = [general, people1, people2] // swift считает что все эти объекты одного типа
for i in array{
    i.methodHi()
}