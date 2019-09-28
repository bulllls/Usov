//:12.1.Функции как замыкания
//Листинг 12.1
// функция отбора купюр
func handle100(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if banknot == 100 {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
// электронный кошелек
var wallet = [10, 20, 10, 100, 50, 100, 10, 30]
handle100(wallet: wallet)

//Листинг 12.2
func hadleMore1000(wallet: [Int]) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if banknot>=1000{
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
var wallet2 = [10,1500, 1000, 5000, 300, 45, 60]
hadleMore1000(wallet: wallet2)

//Листинг 12.3
// единая функция формирования результирующего массив
func handle(wallet: [Int], closure: (Int) -> Bool) -> [Int] {
    var returnWallet = [Int]()
    for banknot in wallet {
        if closure(banknot) {
            returnWallet.append(banknot)
        }
    }
    return returnWallet
}
// функция сравнения с числом 100
func compare100(banknot: Int) -> Bool {
    return banknot==100
}
// функция сравнения с числом 1000
func compare1000(banknot: Int) -> Bool {
    return banknot>=1000
}
var wallet3 = [10, 50, 60, 100, 150, 500, 1000, 5000]
handle(wallet: wallet3, closure: compare100)
handle(wallet: wallet3, closure: compare1000)
//:12.2.Замыкающие выражения
// СИНТАКСИС
//    { (входные_аргументы) -> ТипВозвращаемогоЗначения in
//       тело_замыкающего_выражения
// }
//Листинг 12.4

// отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet3, closure: {(banknot: Int) -> Bool in return banknot>=1000
})
// отбор купюр достоинством 100 рублей
handle(wallet: wallet3, closure: {(banknot: Int) -> Bool in return banknot==100
})
//Листинг 12.5
// отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet3, closure: {banknot in return banknot>=1000})
// отбор купюр достоинством 100 рублей
handle(wallet: wallet3, closure: {banknot in return banknot==100})


//:12.3.Неявное возвращение значения
//Листинг 12.6
// отбор купюр достоинством выше 1000 рублей
handle(wallet: wallet, closure: {banknot in banknot>=1000})
// отбор купюр достоинством 100 рублей
handle(wallet: wallet, closure: {banknot in banknot==100})

//:12.4.Сокращенные имена параметров
//Перепишем вызов функции handle(wallet:closure:) с использованием сокращенных имен
//Листинг 12.7
handle(wallet: wallet3, closure: {$0>=1000})
handle(wallet: wallet3, closure: {$0==100})
//Здесь $0 — это входной аргумент banknot входного аргумента-замыкания closure в функции handle(wallet:closure:)
//Листинг 12.8
handle(wallet: wallet2)
{$0>=1000}
handle(wallet: wallet2)
{$0==100}

//Листинг 12.9
let successBanknots = [100, 500]
handle(wallet: wallet)
{
    banknot in
    for number in successBanknots {
        if number == banknot {
            return true
        }
    }
    return false
}

//:12.5.Переменные-замыкания
//Листинг 12.10
let closure : () -> () = {
    print("Замыкающее выражение")
}
closure()

//Листинг 12.11
var sum: (_ numOne: Int,_ numTwo: Int) -> Int = {
    return $0 + $1
}

sum(10, 34)

//:12.6.Метод сортировки массивов
//Листинг 12.12
var array = [1, 33, 54, 47, 3, 5, 66, 2, 4, 87, 8]
array.sorted(by: {(first: Int, second: Int) -> Bool in return first < second})

//Листинг 12.13
// =уберем функциональный тип замыкания;
// =заменим имена переменных именами в сокращенной форме
var sortedArray = array.sorted(by: {$0>$1})
sortedArray

//Листинг 12.14
var sortedArray2 = array.sorted(by: <)
//: 12.7.Каррирование функций
//Листинг 12.15
func sum(x: Int, y: Int) -> Int {
    return x+y
}
sum(x: 1, y: 4)

//Листинг 12.16
func sum2(_ x: Int) -> (Int) -> Int {
    return { return $0+x }
}
var clos = sum2(1)
clos(12)
clos(13)
clos(55)

sum2(4)(4)

//:12.8.Захват переменных
//Синтаксис захвата переменных
//Листинг 12.19
var a = 1
var b = 2
let closureSum : () -> Int = {
    return a+b
}
closureSum()
 a = 3
 b = 4
closureSum()

//Листинг 12.20
//Перепишем инициализированное переменной closureSum замыкание таким образом, чтобы оно захватывало первоначальные значения переменных a и b
var a1 = 1
var b1 = 2
let closureSum2 : () -> Int = {
    [a1,b1] in
    return a1+b1
}
closureSum2()
a1 = 3
b1 = 4
closureSum2()

//:Захват вложенной функцией
//Листинг 12.21
func makeIncrement(forIncrement amout: Int) -> () -> Int {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amout
        return runningTotal
    }
    return increment
}
//Листинг 12.22
var incrementByTen = makeIncrement(forIncrement: 10)
var incrementBySeven = makeIncrement(forIncrement: 7)
incrementByTen()
incrementByTen()
incrementByTen()

incrementBySeven()
incrementBySeven()
incrementBySeven()

//:12.9.Замыкания –– это тип-ссылка
//Листинг 12.23
var incrementByFive = makeIncrement(forIncrement: 5)
var copyIncrementByFive = incrementByFive

//Листинг 12.24
incrementByFive()
copyIncrementByFive()
incrementByFive()

//:12.10.Автозамыкания
//Листинг 12.25
var arrayOfNames = ["Helga", "Bazil", "Tolik", "Petya", "Pavlik"]
func printName(nextName: String) {
    // какой-либо код
    print(nextName)
}
printName(nextName: arrayOfNames.remove(at: 1))

//Листинг 12.26
func printName(nextName: ()->String) {
    // какой-либо код
    print(nextName())
}
printName(nextName: {arrayOfNames.remove(at: 1)})

//Листинг 12.27
func printName2(nextName: @autoclosure ()->String) {
    // какой-либо код
    print(nextName())
}
printName2(nextName: arrayOfNames.remove(at: 0))

//:11.12.Выходящие замыкания
var arrayOfClosures: [()->Int] = []
//Листинг 12.29
//func addNewClosureInArray(_ newClosure: ()->Int){
//    arrayOfClosures.append(newClosure)// Error
//}
//Листинг 12.30
func addNewClosurelInArray(_ newClosure: @escaping () -> Int){
    arrayOfClosures.append(newClosure)
}
addNewClosurelInArray({return 100})
addNewClosurelInArray{return 1000}
arrayOfClosures[0]()
arrayOfClosures[1]()

