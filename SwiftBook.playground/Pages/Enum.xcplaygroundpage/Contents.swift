
// Перечисление (enum) — это объектный тип данных, который предоставляет доступ к различным предопределенным значениям.
// Перечисление представляет собой группу значений, которые связаны между собой.
// Перечисления помогают нам работать со связанными значениями наиболее безопасным способом.
// Проще всего рассматривать перечисления как структурированные списки связанных элементов(Цвета, Вкусы мороженого...).
// Перечисления нельзя изменить после установки.

enum CurrencyUnit{
    case rouble, euro, dollar // Мы можем определить все перечисления в одной строке
}
let currency1 = CurrencyUnit.rouble
let currency2 = CurrencyUnit.euro
let currency3 = CurrencyUnit.dollar

enum AdvancedCurrencyUnit {
    case rouble(сountries: [String], shortName: String)
    case euro(сountries: [String], shortName: String)
}
let euroCurrency = AdvancedCurrencyUnit.euro(сountries: ["German", "France"], shortName: "EUR")

//
enum MoneyYan{
    case Bitcoin(amount: Double, shortName: String)
    case Solana(amount: Double, shortName: String)
}
let walletBtc = MoneyYan.Bitcoin(amount: 2.3201, shortName: "BTC")
let walletSol = MoneyYan.Solana(amount: 12.345, shortName: "SOL")

switch walletBtc{
case .Bitcoin(let amount, let shortName) where amount < 3:
    print("На твеом счету меньше 3 биткоинов, а именно \(amount)")
default: break
}


