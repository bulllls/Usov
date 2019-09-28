//: 16 Перечисления
//16.1.Синтаксис перечислений

//СИНТАКСИС
//enum ИмяПеречисления {
//    case значение1
//    case значение2
//    ...
//}

//Перечисление — это объектный тип данных, который предоставляет доступ к различным предопределенным значениям

//Листинг 16.1
var russianCurrensy: String = "Rouble"
//Листинг 16.2
var currensyUnit: [String] = ["Rouble", "Dollar", "Euro"]
var americanCurrensy = currensyUnit[1]

//Листинг 16.3
enum CurrencyUnit {
    //case rouble, dollar, euro
    case rouble
    case dollar
    case euro
}

//СИНТАКСИС
//Доступ к значениям перечисления происходит так же, как и к свойствам экземпляров,тоестьчерезсимволточки.Дляинициализациизначениясуществуетдва
//способа.
//var имяПараметра = ИмяПеречисления.значение
//Инициализируемое значение пишется после имени перечисления, отделяясь от
//неготочкой.
//let имяПараметра: ИмяПеречисления
//имяПараметра = .значение
//Имя перечисления выступает в качестве типа данных параметра. Далее доступ
//кзначениямпроисходитужебезуказанияегоимени.

//Листинг 16.5
//Способ 1
let roubleCurrency = CurrencyUnit.rouble
//Способ 2
let dollarCurrency: CurrencyUnit
dollarCurrency = .dollar

var currency1 = CurrencyUnit.rouble
var currency2 = "Rouble"
//:16.2.Ассоциированные параметры
//Листинг 16.6
enum CurrencyUnit6 {
    case rouble(countries: [String], shortName: String)
    case dollar(countries: [String], shortName: String)
    case euro(countries: [String], shortName: String)
}
var roubleCurrensy7: CurrencyUnit6
roubleCurrensy7 = .rouble(countries: ["Russia"], shortName: "RUB")

//Листинг 16.8
// страны, использующие доллар
enum DollarCountries {
    case usa
    case canada
    case australia
}
// тип данных "валюта"
enum CurrencyUnit8 {
    case rouble(countries: [String], shortName: String)
    case dollar(countries: [String], shortName: String, national: DollarCountries)
    case euro(countries: [String], shortName: String)
}
var dollarCurrency8: CurrencyUnit8
dollarCurrency8 = .dollar(countries: ["USA"], shortName: "USD", national: .usa)

//:16.3.Вложенные перечисления
//Листинг 16.9
// тип данных "валюта"
enum CurrencyUnit9 {
    // страны, использующие доллар
    enum DollarCountries9 {
        case usa
        case canada
        case australia
    }
    case rouble(countries: [String], shortName: String)
    case dollar(countries: [String], shortName: String, national: DollarCountries9)
    case euro(countries: [String], shortName: String)
}

//Листинг 16.10
var someVar: CurrencyUnit9.DollarCountries9
someVar = .australia


//:16.4.Оператор switch для перечислений
//Листинг 16.11
var someCurrensy11 = CurrencyUnit9.rouble(countries: ["Russia", "Ukraine", "Belarus"], shortName: "RUB")
// анализ переменной
switch someCurrensy11 {
    case .rouble :
        print("Рубль")
    case let .euro (countries, shortname):
     print("Евро. Страны: \(String(describing: countries)),краткое наименование: \(shortname)")
    case .dollar(let countries, let shortname, let national):
    print("Доллар \(national). Страны: \(String(describing: countries)),краткое наименование: \(shortname) ")
    
}

//:16.5.Связанные значения членов перечисления
//Листинг 16.12
enum Smile: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    var description: String {return self.rawValue}
}

//Листинг 16.13
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune, pluton = 999
}
//Доступ к связанным значениям
//Листинг 16.14
var iAmHappy = Smile.joy
iAmHappy.rawValue

//Инициализация через связанное значение
//Листинг 16.15
var myPlanet = Planet.init(rawValue: 4)
var anotherPlanet = Planet.init(rawValue: 11)

//Листинг 16.16
var mySmile: Smile = .sorrow
mySmile.description

//:16.7.Методы в перечислениях
//Листинг 16.17
enum Smiles: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    // метод для выбора описания
    func description(){
        print("Перечисление содержит список используемых смайликов: их названия и графические обозначения")
    }
}
var mySmiles = Smiles.joy
mySmiles.description()

//:16.8.Оператор self
//Листинг 16.18
enum Smile18: String {
    case joy = ":)"
    case laugh = ":D"
    case sorrow = ":("
    case surprise = "o_O"
    func description(){
        print("Перечисление содержит список используемых смайликов: их названия и графические обозначения")
    }
    func descriptionRawValue() -> String {
        return self.rawValue
    }
}
var mySmile18 = Smile18.joy
mySmile18.description()
mySmile18.descriptionRawValue()

//:16.9.Рекурсивные перечисления
//Листинг 16.19
enum ArithmeticExpression {
    //операция сложения
    case addition(Int, Int)
    //операция вычитания
    case substraction(Int, Int)
    //метод подсчета
    func evaluate() -> Int {
        switch self {
        case .addition(let left, let right):
            return left + right
        case .substraction(let left, let right):
            return left - right
        }
    }
}
var expr = ArithmeticExpression.addition(10, 14)
expr.evaluate()

//Листинг 16.21
//В данном примере вычисляется значение выражения 20 + 10 – 34
enum ArithmeticExpression21 {
    //Хранилище для операнда
    case number(Int)
    indirect case addition21(ArithmeticExpression21, ArithmeticExpression21)
    indirect case subtraction21(ArithmeticExpression21, ArithmeticExpression21)
    func evaluate21(expression: ArithmeticExpression21? = nil) -> Int {
        let expression = (expression == nil ? self : expression)
        switch expression! {
        case .number( let value):
            return value
        case .addition21(let valueLeft, let valueRight):
            return self.evaluate21(expression: valueLeft) + self.evaluate21(expression: valueRight)
        case .subtraction21(let valueLeft, let valueRight):
            return self.evaluate21(expression: valueLeft) - self.evaluate21(expression: valueRight)
        }
    }
}
var ex = ArithmeticExpression21.addition21(.number(20), .subtraction21(.number(10), .number(34)))
ex.evaluate21()


















//:Hoomework(задание 1)

enum Chessmen {
    enum Color:String {
        case white = "Белый(я)"
        case black = "Черный(я)"
    }
    case King(color: Color, russianName: String)
    case Queen(color: Color, russianName: String)
    case Rook(color: Color, russianName: String)
    case Bishop(color: Color, russianName: String)
    case Knight(color: Color, russianName: String)
    case Pawn(color: Color, russianName: String)
}
var ChessmenWhiteKing = Chessmen.King(color: .white, russianName: "Король")
let ChessmenBlackQueen = Chessmen.Queen(color: .black, russianName: "Королева")

let ChessmenPawn = Chessmen.Pawn(color: .black, russianName: "Пешка")

//switch ChessmenPawn {
//case .Pawn(color, russianName):
//    print("Фигура - \(russianName)")
//default:
//    <#code#>
//}


//Задание
//Допишите перечисление ArithmeticExpression таким образом,
//чтобы оно могло реализовать любое выражение с использованием операций сложения, вычитания, умножения, деления
//и возведения в степень
