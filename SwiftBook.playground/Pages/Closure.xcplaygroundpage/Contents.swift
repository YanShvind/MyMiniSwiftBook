
// Усов
/*
 Замыкания (closure), или замыкающие выражения, — это сгруппированный программный код, который может быть передан в виде параметра и многократно использован
 
    { (входные_параметры) -> ТипВозвращаемогоЗначения in
        // тело замыкающего выражения
    }
 */

// безымянная функция в качестве значения константы
let functionInLet = { return true }
// вызываем безымянную функцию
functionInLet() // true

// массив с купюрами
var wallet = [10,50,100,100,5000,100,50,50,500,100]
// функция отбора купюр
func handle100(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if banknote == 100 {
            returnWallet.append(banknote)
        }
}
    return returnWallet
}
// вызов функции отбора купюр с достоинством 100
handle100(wallet: wallet) // [100, 100, 100, 100]

func handleMore1000(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if banknote >= 1000 {
            returnWallet.append(banknote)
        }
}
    return returnWallet
}
// вызов функции отбора купюр с достоинством более или равно 1000
handleMore1000(wallet: wallet) // [5000]
/*
 В результате для отбора купюр по требуемым условиям реализовано уже две функции: handle100(wallet:) и handleMore1000(wallet:). При этом тела обеих функций очень похожи (практически дублируют друг друга), разница лишь в про- веряемом условии, остальной код в функциях один и тот же. В случае дальнейшего расширения программы будут появляться все новые и новые функции, также повторяющие один и тот же код.
 */

// единая функция формирования результирующего массива
func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknote in wallet {
        if closure(banknote) {
            returnWallet.append(banknote)
        }
}
    return returnWallet
}
// функция сравнения с числом 100
func compare100(banknote: Int) -> Bool {
    return banknote == 100
}
// функция сравнения с числом 1000
func compareMore1000(banknote:Int) -> Bool {
    return banknote >= 1000
}
// отбор
let resultWalletOne = handle(wallet: wallet, closure: compare100)
let resultWalletTwo = handle(wallet: wallet, closure: compareMore1000)

// отбор купюр достоинством выше 1000 рублей
// аналог передачи compareMore1000
handle(wallet: wallet, closure: { (banknote: Int) -> Bool in
    return banknote >= 1000
})
// отбор купюр достоинством 100 рублей
// аналог передачи compare100
handle(wallet: wallet, closure: { (banknote: Int) -> Bool in
    return banknote == 100
})
/*
 При объявлении входного параметра closure в функции handle(wallet:closure:) указывается его функциональный тип (Int)->Bool, поэтому при передаче замы- кающего выражения можно опустить данную информацию, оставив лишь имя аргумента
 */
// отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet, closure: { banknote in
    return banknote >= 1000
})

let walletSorted = wallet.sorted { first, second in
    return first < second
}
