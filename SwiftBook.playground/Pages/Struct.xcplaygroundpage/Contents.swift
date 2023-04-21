
// ф-ция внутри структуры - метод
// имеет встроенный инициализатор, но его можно менять по удобству

struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify() {
        print("Town go up")
    }
}

var anotherTown = Town(name: "Nameless IsLand", citizens: ["Yan"], resources: ["Coconuts": 100])
anotherTown.citizens.append("Stecha")

var ghostTown = Town(name: "Ghosty", citizens: [], resources: ["Tumbleweed": 1])
