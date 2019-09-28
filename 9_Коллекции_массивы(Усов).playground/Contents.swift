//Последовательности и коллекци
//Последовательность (Sequence) — набор элементов, выстроенных
//в очередь, в котором есть возможность организации последовательного (поочередного) доступа к ним
let oneTwoThree = 1...3
for number in oneTwoThree {
    print(number)
}

//Коллекции
//Коллекция (Collection) — это последовательность, в которой можно обращаться к отдельному элементу

//Swift предлагает три фундаментальных типа данных, обеспечивающих
//функциональность коллекций: массив (array), набор (set) и словарь
//(dictionary) Все три типа коллекций по аналогии с кортежами представляют собой отдельные типы данных

//Массивы
//Массив — это упорядоченная коллекция однотипных элементов, для
//доступа к которым используются индексы (номера).
//СИНТАКСИС
//[значение_1, значение_2, ...,значение_N]

//неизменяемый массив
let alphabetArray = ["a", "b", "c"]
//изменяемый массив
var mutableArray = [2, 4, 8]

//Листинг 9.3
let unmutableArray = ["one", "two", "three"]
// копируем массив из константы в переменную
var newArray = unmutableArray
newArray
// изменяем значение нового массива
newArray[1] = "four"
// выводим значение исходного массива
unmutableArray
newArray

//Листинг 9.4
// создание массива с помощью передачи списка значений
let alphabetArray1 = Array(arrayLiteral: "a", "b", "c")

//Листинг 9.5
// создание массива с помощью оператора диапазона
let lineArray = Array(0...9)

//Листинг 9.6
// создание массива с повторяющимися значениями
let repeatArray = Array(repeating: "Swift", count: 5)

//Листинг 9.7
// Массив с типом данных [String] или Array<String>
Array(arrayLiteral: "a", "b", "c")
// Массив с типом данных [Int] или Array<Int>
Array(1..<5)

//Листинг 9.8
// доступ к элементам массивов
alphabetArray[1]
mutableArray[2]

//Листинг 9.10
var mutableArray10 = ["one", "two", "three", "four"]
// скопируем подмассив в отдельную переменную
var subArray = mutableArray10[1...2]
/* заменим несколько элементов
  новым массивом */
mutableArray10[1...2] = ["five"]
mutableArray10

//Явное указание типа элементов массива
//СИНТАКСИС
//Полнаяформазаписи:
//var имяМассива: Array<ТипДанных>
//Краткаяформазаписи:
//var имяМассива: [ТипДанных]

//Листинг 9.11
/* одним выражением объявляем массив,
  явно указываем тип его элементов
  и инициализируем его значение */
var firstArray: [String] = ["x", "y", "z"]
// объявляем массив без элементов
var secondArray: Array<Int>
// инициализируем его значение
secondArray = [1, 2, 3, 4, 5]
// выводим значения обоих массивов
firstArray
secondArray

//Листинг 9.12
/* объявляем массив с пустым значением
 с помощью переданного значения */
var emptyArray: [String] = []
/* объявляем массив с пустым значением
 с помощью специальной функции */
var anotherEmptyArray = [String]()

//Листинг 9.13
/* объявляем массив с пятью
 одинаковыми опциональными значениями */
var alphaArray = [String?](repeating: nil, count: 5)

//Сравнение массивов
//Листинг 9.14
/* три константы, которые
 cтанут элементами массива */
let a1 = 1
let a2 = 2
let a3 = 3
if [1, 2, 3] == [a1, a2, a3] {
    print("Массивы эквивалентны")
    } else {
    print("Массивы не эквивалентны")
    }

//Слияние массивов
//Листинг 9.15
// создаем два массива
let charsOne = ["a", "b", "c"]
let charsTwo = ["d", "e", "f"]
let charsThree = ["g", "h", "i"]
// создаем новый слиянием двух
var alphabet = charsOne + charsTwo
// сливаем новый массив со старым
alphabet += charsThree
alphabet[8]

//Многомерные массивы
//Листинг 9.17
var arrayOfArrays = [[1,2,3], [4,5,6], [7,8,9]]
// получаем вложенный массив
arrayOfArrays[2]
// получаем элемент вложенного массива
arrayOfArrays[2][1]

//Базовые свойства и методы массивов
var someArray = [1, 2, 3, 4, 5]
// количество элементов в массиве
someArray.count
var someArray1: [Int] = []
someArray1.count
someArray1.isEmpty

var soArray = [1, 2, 3, 4, 5]
// количество элементов в массиве
var neArray = soArray[soArray.count-3...soArray.count-1]

// получаем три последних элемента массива
let suArray = someArray.suffix(3)
// возвращает первый элемент массива
someArray.first
// возвращает последний элемент массива
someArray.last

//С помощью метода append(_:) можно добавить новый элемент в конец
//массива
someArray.append(6)
// вставляем новый элемент в середину массива
someArray.insert(100, at: 2)
// удаляем третий элемент массива (с индексом 2)
someArray.remove(at: 2)
// удаляем первый элемент массива
someArray.removeFirst()
// удаляем последний элемент массива
someArray.removeLast()
someArray
// удаляем последний элемент
someArray.dropLast()
// удаляем два первых элемента
var newArray26 = someArray.dropFirst(2)
someArray

let intArray = [1, 2, 3, 4, 5, 6]
// проверка существования элемента
let resultTrue = intArray.contains(3)
let resultFalse = intArray.contains(10)
// поиск первого вхождения элемента
let result = intArray.firstIndex(of:4)
let resultNIL = intArray.firstIndex(of:99)
// поиск минимального элемента
intArray.min()
// поиск максимального элемента
intArray.max()

//Чтобы изменить порядок следования всех элементов массива на противоположный, используйте метод reverse()
someArray.reverse()

//Наборы
//Набор — это неупорядоченная коллекция уникальных элементов
//СИНТАКСИС
//[значение_1, значение_2, ...,значение_N]

/* набор, созданный путем
 явного указания типа */
var dishes: Set<String> = ["хлеб", "овощи","тушенка", "вода"]
/* набор, созданный без явного
 указания типа данных */
var dishesTwo: Set = ["хлеб", "овощи", "тушенка", "вода"]
/* набор, созданный с помощью
 функции при явном
 указании типа данных*/
var members = Set<String>(arrayLiteral: "Энекин", "Оби Ван", "Йода")
/* набор, созданный с помощью
 функции без явного указания
 типа данных */
var membersTwo = Set(arrayLiteral: "Энекин", "Оби Ван", "Йода")
//Созданиепустогонабора
var members2 = Set<String>()
// удаление всех элементов набора
dishes = []

//Доступ к набору и модификация набора
//Листинг 9.33
// создаем пустой набор
var musicStyleSet: Set<String> = []
// добавляем к нему новый элемент
musicStyleSet.insert("Jazz")
musicStyleSet
// создание набора со значениями
var musicStyleSet34: Set<String> = ["Jazz", "Hip-Hop", "Rock"]
// удаляем один из элементов
musicStyleSet34.remove("Hip-Hop")
musicStyleSet34
// удаляем несуществующий элемент
musicStyleSet34.remove("classic")
// удаляем все элементы набора
musicStyleSet34.removeAll()

//Листинг 9.35
var musicStyleSet35: Set<String> = ["Jazz", "Hip-Hop", "Rock", "Funk"]
// проверка существования значения в наборе
if musicStyleSet35.contains("Funk") {
    print("У тебя хороший вкус")
} else {
    print("Послушай то, что слушаю я")
}

//Базовые свойства и методы наборов
//Листинг 9.36
// набор с четными цифрами
let evenDigits: Set = [0, 2, 4, 6, 8]
// набор с нечетными цифрами
let oddDigits: Set = [1, 3, 5, 7, 9]
// набор со смешанными цифрами
var differentDigits: Set = [3, 4, 7, 8]

//При использовании метода intersection(_:) создается новый набор,содержащий значения, общие для двух наборов
var inter = differentDigits.intersection(oddDigits).sorted()

//Для получения всех непересекающихся значений служит метод symmetricDifference(_:)
var exclusive = differentDigits.symmetricDifference(oddDigits).sorted()

//Для получения всех элементов из обоих наборов применяется объединяющий метод union(_:)
var union = evenDigits.union(oddDigits).sorted()

//Метод subtracting(_:) возвращает все элементы первого множества, которые не входят во второе множество
var subtrack = differentDigits.subtracting(evenDigits).sorted()

//Эквивалентность наборов
//Листинг 9.41
// создаем набор и его копию
var bSet: Set = [1, 3]
var copyOfBset = bSet
/* в наборах bSet и copyOfBSet одинаковый состав
 элементов. Проверим их эквивалентность */
if bSet == copyOfBset {
    print("Наборы эквиваленты")
} else {
    print("Наборы не эквивалентны")
}

//Листинг 9.42
var aSet: Set = [1, 2, 3, 4, 5]
var bSet1: Set = [1, 3]
if bSet1.isSubset(of: aSet) {
    print("bSet1 - это субнабор для aSet")
}

//Метод isSuperset(of:) вычисляет, является ли набор супернабором для другого набора
if aSet.isSuperset(of: bSet) {
    print("aSet - это супернабор для bSet")
}

//Метод isDisjoint(with:) определяет, существуют ли в двух наборах общие элементы, и в случае их отсутствия возвращает true
//Листинг 9.44
var bSet44: Set = [1, 3]
var cSet44: Set = [6, 7, 8, 9]
if bSet44.isDisjoint(with: cSet44) {
    print("Наборы bSet и cSet не пересекаются")
}

//Методы isStrictSubset(of:) и isStrictSuperset(of:) определяют, является набор субнабором или супернабором, не равным указанному множеству
//Листинг 9.45
var ASet: Set = [1,2,3,4,5]
var BSet: Set = [1,3]
if BSet.isStrictSubset(of: ASet) {
    print("BSet - субнабор для ASet")
}
if ASet.isStrictSuperset(of: BSet) {
    print("ASet - супернабор для BSet")
}

//9.5.Словари
//Словарь — это неупорядоченная коллекция элементов одного и того же типа, для доступа к значениям которых используются ключи
//СИНТАКСИС
//[ключ_1:значение_1, ключ_2:значение_2, ..., ключ_N:значение_N]
//Листинг 9.46
var dictionary = ["one":"один", "two":"два", "three":"три"]

//Листинг 9.47
// базовая коллекция кортежей (пар значений)
let baseCollection = [(2, 5), (3, 6), (1,4)]
// создание словаря на основе базовой коллекции
let newDictionary = Dictionary(uniqueKeysWithValues: baseCollection)

//Листинг 9.48
let nearestStarNames = ["Proxima Centauri", "Alpha Centauri A", "Alpha Centauri B", "Barnard's Star", "Wolf 359"]
let nearestStarDistances = [4.42, 4.37, 4.37, 5.96, 7.78]
let starDistanceDict = Dictionary(uniqueKeysWithValues: zip(nearestStarNames, nearestStarDistances))

//Взаимодействие с элементами словаря
//Листинг 9.49
var countryDict = ["RUS":"россия", "BEL":"Belarus", "UKR":"Ukrain"]
// получаем значение элемента
countryDict["BEL"]
// изменяем значение элемента с возвращением нового элемента словоря
countryDict["RUS"] = "Russia"
countryDict
// изменяем значение элемента с возвращением старого элемента словоря
countryDict.updateValue("Беларусь", forKey: "BEL")
countryDict

// создание нового элемента словаря
countryDict["USA"] = "Соединенные Штаты Америки"
print(countryDict)
// удаление элемента словаря
countryDict["RUS"] = nil
countryDict.removeValue(forKey: "UKR")
print(countryDict)
// получим значение элемента
let myCountry: String = countryDict["BEL"]!

//Явное указание типа данных словаря
//СИНТАКСИС
//var имя_словаря: Dictionary<ТипКлюча:ТипЗначения>
//var имя_словаря: [ТипКлюча:ТипЗначения]

//Создание пустого словаря
//Листинг 9.54
var empyDictionary: [String:Int] = [:]
var AnotherEmptyDictionary: Dictionary<String, Int> = [:]

//уничтожить все элементы словаря
countryDict = [:]
countryDict

//Базовые свойства и методы словарей
//Листинг 9.56
var someDictionary = ["One":1, "Two":2,"Three":3]
// количество элементов в словаре
someDictionary.count
//Если свойство count равно нулю, то свойство isEmpty возвращает true
someDictionary = [:]
someDictionary.isEmpty

countryDict = ["RUS":"россия", "BEL":"Belarus", "UKR":"Ukrain"]
// все ключи словаря countryDict
var keys = countryDict.keys
print(keys)
// все значения словаря countryDict
var values = countryDict.values
print(values)

//При вызове свойства keys или values Swift возвращает не массив, набор или словарь, а значение некоего типа LazyMapCollection, которое представляет собой ленивую коллекцию

// Homework
typealias Chessman = [String:(alpha:Character,num:Int)?]
var Chessmans: Chessman = ["Белый король":("d",8), "Черный конь":(nil), "Черная королева":("e",8)]
print(Chessmans)

if (Chessmans["Черная королева"]! != nil) {
    print("Фигура находиться на поле")
} else {
    print("Фигуры нет на шахматной доске")
}


//-------------------------------------------------------//
// проверяем, существуют ли первая фигура
if let coordinates = Chessmans["Белый король"]! {
    print("Coordinates of White King is \(coordinates)")
}else{
    print("White King id dead")
}
// проверяем, существуют ли вторая фигура
if let coordinates = Chessmans["Черный конь"]! {
    print("Coordinates of Black Rook is \(coordinates)")
}else{
    print("Black Rook id dead")
}
// проверяем, существуют ли третья фигура
if let coordinates = Chessmans["Черная королева"] {
    print("Coordinates of Black Bishop is \(String(describing: coordinates))")
}else{
    print("Black Bishop id dead")
}
