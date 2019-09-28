//  Функции
//11.1.Объявление функций
//СИНТАКСИС
//func имяФункции (входные_параметры) ->
//    ТипВозвращаемогоЗначения {
//        тело_функции
//}

//Листинг 11.2
func printCodeMessage(requestCode: Int) -> () {
    print("Код ответа - \(requestCode)")
}
printCodeMessage(requestCode: 200)
printCodeMessage(requestCode: 404)

//Листинг 11.3
func sum(a:Int, b: Int, c: Int) -> () {
    print("Сумма - \(a+b+c)")
}
sum(a: 2, b: 2, c: 2)


//Листинг 11.4
func sum2(a:Int, _ b: Int, c:Int) -> () {
    print("Сумма2 - \(a+b+c)")
}
sum2(a: 2, 2, c: 2)

//Переменные копии параметров
//Листинг 11.5
func generateString(code: Int, _ text: String) -> String {
    var mutableTet = text
    mutableTet += String(code)
    return mutableTet
}
generateString(code: 404, "Not found - ")

//Сквозные параметры
//Листинг 11.6
func changeValues(_ a: inout Int, _ b: inout Int) -> () {
    let tmp = a
    a = b
    b = tmp
}
var a = 150, b = 45
changeValues(&a, &b)
a
b

//Функция в качестве значения аргумента
//Листинг 11.7
func generateString(code: Int, message: String) -> String {
    let returnMessage = "Получино сообщение \(message) с кодом \(code)"
    return returnMessage
}
// используем функцию в качестве значения
print(generateString(code: 200, "Сервер доступен "))

//Входной параметр с переменным числом аргументов
func printRequestString(codes: Int...) -> () {
    var codesString = ""
    for oneCode in codes {
        codesString += String(oneCode) + " "
    }
    print("Получены ответы - \(codesString)")
}
printRequestString(codes: 200, 400, 500, 501)
printRequestString(codes: 100)

//Кортеж в качестве возвращаемого значения
//Листинг 11.9
func getCodeDescription(code: Int) -> (Int, String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}
print(getCodeDescription(code: 150))

//Листинг 11.10
func getCodeDescription2(code: Int) -> (code: Int, description: String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknow"
    }
    return (code, description)
}
let request = getCodeDescription2(code: 100)
request.description
request.code

//Листинг 11.11
func sumWallet( wallet: [Int] ) -> Int {
    var sum = 0
    for oneBanknote in wallet {
        sum += oneBanknote
    }
    return sum
}
// кошелек с купюрами
var wallet = [50, 100, 100, 50]

// сосчитаем сумму всех купюр
sumWallet(wallet: wallet)
// добавим новую купюру
wallet.append(100)
// снова сосчитаем сумму
sumWallet(wallet: wallet)

//Значения по умолчанию для аргументов
//Листинг 11.12
func sumWallet12 (wallet:[Int]? = nil) -> Int? {
    var sum = 0
    if wallet == nil {
        return nil
    }
    for oneBanknote in wallet! {
        sum += oneBanknote
    }
    return sum
}

sumWallet12(wallet: wallet)
sumWallet12()

//Внешние имена аргументов
func sumWallet13(banknotsArray wallet: [Int]? = nil) -> Int? {
    var sum = 0
    if wallet == nil {
        return nil
    }
    for oneBanknote in wallet! {
        sum += oneBanknote
    }
    return sum
}
// сосчитаем сумму всех купюр
sumWallet13(banknotsArray: [50, 100, 50])

//11.3.Возможности функций
//Функциональный тип () -> ()

//([Int]) -> (String,String)?

//Функция в качестве аргумента
//Листинг 11.14
import Foundation
// функция генерации случайного массива банкнот
func generateWallet(walletLenght: Int) -> [Int] {
    // существующие типы банкнот
    let typesOfBanknotes = [10, 10, 30]
    var wallet: [Int] = []
    // цикл генерации массива случайных банкнот
    for _ in 1...walletLenght {
        let randomIndex = Int(arc4random_uniform(UInt32(typesOfBanknotes.count-1)))
        wallet.append(typesOfBanknotes[randomIndex])
    }
    return wallet
}
// функция подсчета денег в кошельке
func sumWallet14(banknotsFunction wallet: (Int)->([Int])) -> Int? {
    // вызов переданной функции
    let myWalletArray = wallet( Int(arc4random_uniform(10)))
    var sum: Int = 0
    for oneBanknote in myWalletArray {
        sum += oneBanknote
    }
    return sum
}
// передача функции в функцию
sumWallet14(banknotsFunction: generateWallet)

//Сложный функциональный тип
//() -> () -> ()
//(Int) -> (String) -> Bool

//Функция в качестве возвращаемого значения
//Листинг 11.15
// функция вывода текста
func printText() -> (String) {
    return "Очень хорошая книга"
}
// функция, которая возвращает функцию
func returnPrintTextFunction() -> () -> String {
    return printText
}

let newFunctionInLet = returnPrintTextFunction()

newFunctionInLet()

//Вложенные функции
//Листинг 11.16
func oneStep( coordinates: inout (Int, Int), stepType: String){
    func up( coords: inout (Int, Int)) {
        coords = (coords.0+1, coords.1)
    }
    func right( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1+1)
    }
    func down ( coords: inout (Int, Int)) {
        coords = (coords.0-1, coords.1)
    }
    func left( coords: inout (Int, Int)) {
        coords = (coords.0, coords.1-1)
    }
    switch stepType {
    case "up":
        up(coords: &coordinates)
    case "right":
        right(coords: &coordinates)
    case "down":
        down(coords: &coordinates)
    case "left":
        left(coords: &coordinates)
    default:
        break
    }
}
var coordinates = (10, -5)
oneStep(coordinates: &coordinates, stepType: "up")
oneStep(coordinates: &coordinates, stepType: "right")
coordinates

//Перегрузка функций(overloading)
//Листинг 11.17
func say(what: String){}
func say(what: Int){}

//Листинг 11.18
func cry() -> String {
    return "one"
}
func cry() -> Int {
    return 1
}
////Листинг 11.20
//let resultString: String = say()
//let resultInt = say() + 100


//Рекурсивный вызов функций
//Листинг 11.21
func countdown(firstNum num: Int) {
    print(num)
    if num > 0 {
        // рекурсивный вызов функции
        countdown(firstNum:num-1)
    }
}
countdown(firstNum: 10)

//11.4.Безымянные функции
//Листинг 11.22
// безымянная функция в качестве значения константы
let functionInLet = {return true}
functionInLet()

//------Homework------//

typealias Chessman = [String:(alpha:Character,num:Int)?]

var Chessmans: Chessman = ["Белый король":("d",8), "Черный конь":(nil), "Черная королева":("e",8)]


func chessAnalizer(figures:Chessman){
    for (сhesName, coordinates) in figures {
        if coordinates != nil {
            print("Фигура \(сhesName) находиться на поле с координатами \((coordinates)!)")
        } else {
            print("Фигура \(сhesName) - убит")
        }
    }
}
//chessAnalizer(figures: Chessmans)

func chessChange(_ figure: inout Chessman, nameFigure: String, _ coordinates: ((Character, Int)?)){
   
    
    
   
}



chessChange(&Chessmans, nameFigure: "Белый король", (("R", 5)))
