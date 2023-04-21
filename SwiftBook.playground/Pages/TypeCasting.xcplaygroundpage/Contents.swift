
// The swift dev

// is возвращает либо да, либо нет
// узнаем отсносится ли этот объект к объекту этого типа

// as если будут попадаться такие объекты, как ..., то переместите их в переменную

class Media {
    var name: String
    
    init (name: String){
        self.name = name
    }
}

class Film: Media{
    var director: String
    
    init(director: String, name: String) {
        self.director = director
        super.init(name: name)
    }
}

class Music: Media{
    var artist: String
    
    init(artist: String, name: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let mediaArray: [Media] = [
    Film.init(director: "Casa", name: "Yan"),
    Music.init(artist: "Blue", name: "Elvis"),
    Film.init(director: "Kane", name: "Citrizen"),
    Music.init(artist: "The only", name: "Chesney"),
    Film.init(director: "Never", name: "Rick")]

// проверка типов

var count = (musicCount: 0, filmCount: 0)

for i in mediaArray{
    if i is Film { // узнаем отсносится ли этот объект к объекту этого типа
        count.filmCount += 1
    }else if i is Music{
        count.musicCount += 1
    }
}
print("в вашем плеере \(count.musicCount) музыки")
print("в вашем плеере \(count.filmCount) фильмa")

// понижающее приведение

for value in mediaArray{
    if let musics = value as? Music{
        print("Song \(musics.name) by \(musics.artist)")
    }else if let films = value as? Film{
        print("Films \(films.name) by \(films.director)")
    }
}
