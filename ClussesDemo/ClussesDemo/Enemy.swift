

class Enemy{
    var health = 100
    var attackStrength = 10
    
    func move(){
        print("Walk forwards.")
    }
    func attack() {
        print("land a hit, does \(attackStrength) damage.")
    }
}
