// 6 кортеджи
//let имяКонстанты = (значение_1, значение_2, ...)
//var имяПеременной = (значение_1, значение_2, ...)

let myProgramStatus = (200, "In Work", true);
// объявляем кортеж с явно заданным типом
let myProgramStatus1: (Int, String, Bool) = (200, "In Work", true);

// объявляем псевдоним для типа Int
typealias numberType = Int;
// объявляем кортеж
let numbersTuple: (Int, Int, numberType, numberType)
// инициализируем его значение
numbersTuple = (0,1,2,3);

//6.2.Взаимодействие с элементами кортежа
// объявляем кортеж
let myProgramStatus4 = (200, "In Work", true);
// записываем значения кортежа в переменные
var (statusCode, statusText, statusConnect) = myProgramStatus4
// выводим информацию
print("Код ответа — \(statusCode)")
print("Текст ответа — \(statusText)")
print("Связь с сервером — \(statusConnect)")

/* объявляем сразу несколько
 переменных и устанавливаем
 для них значения */
var (myName, myAge) = ("Тролль", 140)
// выводим их значения
print("Меня зовут \(myName), и мне \(myAge) лет")

// объявляем кортеж
let myProgramStatus6: (Int, String, Bool) = (404, "Error", true)
/* получаем только необходимые
 значения кортежа */
var (statusCode6, _, _) = myProgramStatus6
// выводим информацию
print(" Код ответа — \(statusCode6)")

//Индексы для доступа к элементам
// объявляем кортеж
let myProgramStatus7: (Int, String,
    Bool) = (200, "In Work", true)
// выводим информацию с использованием индексов
print(" Код ответа — \(myProgramStatus7.0)")
print(" Текст ответа — \(myProgramStatus7.1)")
print(" Связь с сервером — \(myProgramStatus.2)")

//Имена для доступак элементам
let myProgramStatus8 = (statusCode8: 200,statusText8: "In Work", statusConnect8: true)

// выводим информацию с использованием индексов
print(" Код ответа —\(myProgramStatus8.statusCode8)")
print(" Текст ответа —\(myProgramStatus8.statusText8)")
print(" Связь с сервером —\(myProgramStatus8.2)")

/* объявляем кортеж с
указанием имен элементов
в описании типа */
let myProgramStatus10: (statusCode: Int,
statusText: String, statusConnect: Bool) = (200, "In Work", true)
/* выводим значение элемента
кортежа с помощью имени
этого элемента*/
myProgramStatus10.statusCode
/* объявляем кортеж с
указанием имен элементов
при инициализации их значений */
let myNewProgramStatus10 = (statusCode: 404, statusText:"Error", statusConnect:true)
/* выводим значение элемента
 кортежа с помощью имени
 этого элемента*/
myNewProgramStatus10.statusText

//Изменение значений кортежей
// объявляем пустой кортеж
var myFirstTuple: (Int, String)
// создаем кортеж со значением
var mySecondTuple = (100, "Код")
// передаем значение кортежа
myFirstTuple = mySecondTuple

// объявляем кортеж
var someTuple = (200, true)
// изменяем значение отдельного элемента
someTuple.0 = 404
someTuple.1 = false

//Сравнение кортежей
(1, "alpha") < (2, "beta")
// истина, так как 1 меньше 2
// вторая пара элементов не учитывается
(4, "beta") < (4, "gamma")
// истина, так как "beta" меньше "gamma"
(3.14, "pi") == (3.14, "pi")
//истина, так как все соответствующие элементы идентичны


//Homework
var mySelf = (film: "matrix", number: 4, foot: "chiz");
let (myFilm, myNumber, myFoot) = mySelf;

var yourSelf = (film: "Lol", number: 8, foot: "KFC");
print(mySelf, yourSelf);

mySelf=yourSelf;
yourSelf.0 = myFilm;
yourSelf.1 = myNumber;
yourSelf.2 = myFoot;
print(mySelf, yourSelf);

var final = (mySelf.1, yourSelf.1, mySelf.1 - yourSelf.1);


