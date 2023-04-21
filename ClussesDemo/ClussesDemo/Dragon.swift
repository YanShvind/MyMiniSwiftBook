
// Наследование
// класс Дракон наследуется от супер класса Enemy
// он имеет все те же возможности и не только
// мы добавили умение летать и говорить
// с помощью ключевого слова override
// мы заменяем, вместо "Ходить" на "Летать"
// с помощью override мы можем переопределить метод
// super позволяет использовать ф-цию из супер класса
// и благодаря override мы добавляем что-то новое

class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(speech: String){
        print("Says: \(speech)")
    }
    
    override func move() {
        print("Fly forwards")
    }
    override func attack() {
        print("Spits fire, does 10 damage")
    }
}
