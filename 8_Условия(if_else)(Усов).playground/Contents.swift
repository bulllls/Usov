//Операторы условий
//специальный механизм утверждений (assertions)
var dragonAge = 230
assert(dragonAge >= 225, "Молодой дракон")

//Переенная типа Bool
var logicVar = true
if logicVar {
    print("Переменная истина")
}

var logicVar6 = false
if !logicVar6 {
    "Переменная лож"
}

var logikVar7 = false
if logikVar7 {
    print("Переменная истина")
} else {
    print("Переменная лож")
}

var firsLogicVar = true
var secondLogicVar = false
if firsLogicVar && secondLogicVar {
    print("Обе переменные истина")
} else if firsLogicVar || secondLogicVar{
    print("Одна из переменных истина")
} else {
    print("Обе переменные лож")
}

//Листинг 8.10
//Количество жильцов в доме
var tenantCount = 6
//Стоимость аренды на человека
var rentPrice = 0
/* определение цены на одного
 человека в соответствии с условием */
if tenantCount < 5 {
    rentPrice = 1000
} else if tenantCount >= 5 && tenantCount <= 7 {
    rentPrice = 800
} else {
    rentPrice = 500
}
//Вычисление общей суммы
var allPrice = rentPrice * tenantCount

//Тернарный оператор условия
//СИНТАКСИС проверяемое_условие ? код1 : код2
let a = 1
let b = 2
//сравнение значения констант
a <= b ? print("А меньше или равно B"):print("А больше B")

var height = 180
var isHeader = true
let rowHeight = height + (isHeader ? 20 : 10)

//Оператор if для опционалов
//Листонг 8,13
/* переменная опционального типа
с предустановленным значением */
var fiveMarkCount: Int? = 8
//Определение наличие значения
if fiveMarkCount == nil {
    print("Пятерки отсутствуют")
} else {
    //Количество пирожных за каждую пятерку
    var cakeForEachFiveMark = 2
    // Общее количество пирожных
    var allCakeCount = cakeForEachFiveMark * fiveMarkCount!
}

//Прием опционального связывания (optional binding)
//СИНТАКСИС
// if var имя_создаваемой_переменной = имя_опционала {
//    код1
//} else {
//    код2
//}


/* переменная опционального типа
  с предустановленным значением */
var markCount1: Int? = 8
//Глобальная константа
var marks = 0
// Определяем наличие значения
if var marks = markCount1 {
    print("Всего \(marks) оценок" )
} else {
print("Оценки отсутствуют")
}
//Обратите внимание на то, что переменная marks, созданная вне оператора условия, и одноименная переменная marks, созданная в процессе
//опционального связывания, — это разные переменные

/* переменная типа String,
содержащая количество золотых монет
в сундуке нового дракона */
var coinsInNewChest = "140"
/* переменная типа Int,
  в которой будет храниться общее
  количество монет у всех драконов */
var allCoinsCount = 1301
//Проверяем существование значения
if Int(coinsInNewChest) != nil {
    allCoinsCount += Int(coinsInNewChest)!
} else {
    print("У нового дракона нет золота")
}

//Листинг 8.16
/* переменная типа String,
  содержащая количество золотых монет
  в сундуке нового дракона */

var coinsInNewChest1 = "140"
/* переменная типа Int,
 в которой будет храниться общее
 количество монет у всех драконов */
var allCoinsCount1 = 1301
/* извлекаем значение опционала
 в новую переменную */
var coins = Int(coinsInNewChest1)
/* проверяем существование значения
 с использованием созданной переменной */
if coins != nil {
    allCoinsCount1 += coins!
} else {
    print("У нового дракона нет золота")
}

//Листинг 8.17
/* переменная типа String,
 содержащая количество золотых монет
 в сундуке нового дракона */
var coinsInNewChest2 = "140"
/* переменная типа Int,
 в которой будет храниться общее
 количество монет у всех драконов */
var allCoinsCount2 = 1301
/* проверяем существование значения
 с использованием опционального связывания */
if let coins = Int(coinsInNewChest2) {
    allCoinsCount2 += coins
} else {
    print("У нового дракона нет золота")
}

//homework_1
// объявляем псевдоним для типа String
typealias Text = String;
let login: Text = "12345"
let pass: Text = "54321"
let mail: Text = "1a2b3c"

if Int(login) != nil {
    print(login)
}
if Int(pass) != nil {
    print(pass)
}
if Int(mail) != nil {
    print(mail)
}

typealias TupleType = Optional
var a1: (Text?, Text?) = ("190", "67")
var b1: (Text?, Text?) = ("100", nil)
var c1: (Text?, Text?) = ("-65", "70")

if a1.0 != nil && a1.1 != nil {
    print(a1)
}
if b1.0 != nil && b1.1 != nil {
    print(b1)
}
if c1.0 != nil && c1.1 != nil {
    print(c1)
}

// Оператор раннего выхода guard
//СИНТАКСИС
//guard утверждение else {
   // тело оператора
//}

//8.4.Оператор ветвления switch
//СИНТАКСИС
//switch проверяемое_выражение {
//case значение1:
//    код1
//case значение2, значение3:
//    код2
//    ...
//case значениеM:
//    break
//default:
//    кодN
//}

/* переменная типа Int
 содержит оценку, полученную
 пользователем */

var userMark = 4
/* используем конструкцию if-else
 для определения значения
 переменной userMark и вывода
 необходимого текста */
if userMark == 1 {
     print("Единица на экзамене! Это ужасно!")
     } else if userMark == 2 {
     print("С двойкой ты останешься на второй год!")
     } else if userMark == 3 {
     print("Ты плохо учил материал в этом году!")
     } else if userMark == 4 {
     print("Неплохо, но могло быть и лучше")
     } else if userMark == 5 {
     print("Бесплатное место в университете тебе обеспечено!")
     }

var userMark1 = 2
/* используем конструкцию switch-case
 для определения значения
 переменной userMark и вывода
 необходимого текста */
switch userMark1 {
    case 1:
        print("Единица на экзамене! Это ужасно!")
    case 2:
    print("С двойкой ты останешься на второй год!")
    case 3:
        print("Ты плохо учил материал в этом году!")
    case 4:
        print("Неплохо, но могло быть и лучше")
    case 5:
        print("Бесплатное место в университете тебе обеспечено!")
    default:
        break
    }

//Листинг 8.20
/* переменная типа Int
 содержит оценку, полученную
 пользователем */
var userMark2 = 3
// проверка значения с использованием диапазона
switch userMark {
    case 1..<3:
        print("Экзамен не сдан!")
    case 3...5:
        print("Экзамен сдан!")
    default:
        assert(false, "Оценка \(userMark2) вне доступного диапазона")
    }
//Ключевое слово fallthrough
// для перехода выполнения кода в следующем блоке

/* переменная типа Character
 содержит уровень
 готовности */
var level: Character = "I"
// определение уровня готовности
switch level {
    case "F":
        print("Выключить все электрические приборы ")
        fallthrough
    case "I":
        print("Закрыть входные двери и окна ")
        fallthrough
    case "D":
        print("Соблюдать спокойствие")
    default:
        break
    }

//Ключевое слово where

//Листинг 8.22
/* переменная типа Float
 содержит вес дракона */
var dragonWeight: Float = 2.4
/* переменная типа Float
 содержит вес дракона */
var dragonColor = "зеленый"
// определение загона для поступившего дракона
switch dragonColor {
    case "зеленый" where dragonWeight < 2:
        print("Поместите дракона в загон 1")
    case "красный" where dragonWeight < 2:
        print("Поместите дракона в загон 2")
case "зеленый" where dragonWeight >= 2, "красный" where dragonWeight >= 2:
        print("Поместите дракона в загон 3")
    default:
        break
     }

//Листинг 8.23
var userMark23 = 4
switch userMark {
    case _ where userMark23>1 && userMark23<3:
        print("Экзамен не сдан!")
    case _ where userMark23 >= 3:
        print("Экзамен сдан!")
    default:
       assert(false, "Оценка \(userMark23) вне доступного диапазона")
    }

//Кортежи в операторе switch
//Листинг 8.24
/* кортеж типа (String, Float)
 содержит цвет и вес дракона */
var dragonCharacteristic = ("красный", 1.4)
// определение загона для поступившего дракона
switch dragonCharacteristic {
    case ("зеленый", 0..<2):
        print("Поместите дракона в загон 1")
    case ("красный", 0..<2):
        print("Поместите дракона в загон 2")
    case ("красный", _),
         ("зеленый", _) where
        dragonCharacteristic.1 > 2:
        print("Поместите дракона в загон 3")
    default:
        print("Дракон с неизвестными параметрами")
    }

//Листинг 8.25
/* кортеж типа (String, Int)
 содержит цвет и вес дракона */
var dragonCharacteristic1 = ("зеленый", 2.4)
// определение загона для поступившего дракона
switch dragonCharacteristic1 {
   case ("зеленый", 0..<2):
       print("Поместите дракона в загон 1")
    case ("красный", 0..<2):
        print("Поместите дракона в загон 2")
    case ("зеленый", let weight) where weight >= 2:
        print("Поместите дракона в загон 3")
    case ("красный", let weight) where weight >= 2:
        print("Поместите дракона в загон 3")
    default:
        print("Дракон с неизвестными параметрами")
    }

//Листинг 8.26
/* кортеж типа (String, Int)
 содержит цвет и вес дракона */
var dragonCharacteristic3 = ("зеленый", 0.4)
// определение загона для поступившего дракона
switch dragonCharacteristic3 {
    case ("зеленый", 0..<2):
        print("Поместите дракона в загон 1")
    case ("красный", 0..<2):
        print("Поместите дракона в загон 2")
    case let(color, weight) where (color == "зеленый" || color ==
        "красный") && weight >= 2:
        print("Поместите дракона в загон 3")
    default:
        print("Дракон с неизвестными параметрами")
     }

//Homework_2
typealias Operation = (operandOne: Float, operandTwo: Float, operation: Character)
let calc: Operation = (3.1, 33, "/")
var result: Float
switch calc.2{
case "+" :
    result = Float(calc.0) + Float(calc.1)
    print(result)
case "-" :
    result = Float(calc.0) - Float(calc.1)
    print(result)
case "*" :
    result = Float(calc.0) * Float(calc.1)
    print(result)
case "/" :
    result = Float(calc.0) / Float(calc.1)
    print(result)
default:
    break
}
