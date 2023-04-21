
// С помощью сабскриптов структуры и классы можно превратить в некое подобие коллекций.
// геттер только для считывания
// чтобы установить значение нужен сеттер

/*
 class имяКласса {
    subscript(index: тип_индекса) -> возвращаемый тип{
        get{
            возвратить значение и только чтение
 }
        set{
            записать имяЗначения по индексу
        }
    }
 }
 */

struct Table{
    var multi: Int
    subscript(index: Int)->Int{
        get{
            return multi * index
        }
    }
}
var tableResult = Table(multi: 3)
tableResult[10]

struct Man{
    var man1 = "Yan"
    var man2 = "Stesha"
    var man3 = "Nurbek"
    
    subscript(index: Int)->String?{
        get{
        switch index{
        case 0: return man1
        case 1: return man2
        case 2: return man3
            
        default: return ""
            }
        }
        set{
            let value = newValue ?? " "
            switch index{
            case 0: return man1 = value
            case 1: return man2 = value
            case 2: return man3 = value
                
            default: break
            }
        }
    }
}
var say = Man()
say[1]
say[0] = "Bob"
say.man1 // благодаря сету - новое значение
