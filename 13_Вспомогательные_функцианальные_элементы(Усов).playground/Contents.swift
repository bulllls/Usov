//: 13 Вспомогательные функциональные элементы
//:13.1Методmap(_:)
//Листинг 13.1
var myArray = [2, 4, 5, 7]
var newArray = myArray.map{$0}
newArray

//Методmap (_:)позволяетпередатьвнегозамыкание,котороеимеетодинвходной
//аргумент того же типа, что и элементы обрабатываемой коллекции, и один выходнойпараметр.Еслинеиспользоватьсокращенныйсинтаксис,товызовметода
//будет выглядеть следующим образом:
var array1 = [2, 4, 5, 7]
let newArray1 = array1.map({
    (value: Int) -> Int in
    return value
})
let newArray2 = array1.map{value in value}
let nawArray3 = array1.map{$0}

//Листинг 13.2
var array2 = [2, 4, 5, 7]
var ThisArray = array2.map{$0*$0}
ThisArray

//Листинг 13.3
var intArray = [1, 2, 3, 4]
var  boolArray = intArray.map{$0 > 2}
boolArray

//Листинг 13.4
//возможность создания многомерных массивов
let numbers = [1, 2, 3, 4]
let mapped = numbers.map { Array(repeating: $0, count: $0)}
mapped

//Листинг 13.5
//перевода расстояния,указанного в милях, в километры
let milesToDest = ["Moscow":120.0, "Dubai":50.0, "Paris":70.0]
var kmToDest = milesToDest.map {name,miles in [name:miles * 1.6093]}
kmToDest

//:13.2.Метод mapValues(_:)
//Листинг 13.6
var mappedCloseStars = ["Proxima Centauri": 4.24,
                    "Alpa Centauri A": 4.37,
                    "Alpa Centauri B": 4.37]
let newCollection = mappedCloseStars.map{$0}
type(of: newCollection)
//Согласитесь, что работать с массивом, имеющим тип Array<(key:
//String, value: String)>, совершенно неудобно В этом случае к нам
//на помощь приходит метод mapValues(_:)=>

//Листинг 13.7
let newCollection7 = mappedCloseStars.mapValues{ $0+1 }
newCollection7
//В результате вы получаете все тот же словарь, но с обработанными
//в соответствии с замыканием значениями

//:13.3.Метод filter(_:)
//фильтрация всех целочисленных элементов исходного массива, которые делятся на 2 без остатка (то есть всех четных чисел)
//Листинг 13.8
let numbers8 = [1, 4, 10, 15]
let even = numbers8.filter{ $0 % 2 == 0 }
even

//фильтрация элементов словаря starDistanceDict
//Листинг 13.9
var starDistanceDict = ["Wolf 359": 7.78, "Alpa Centauri B": 4.37, "Proxima Centauri": 4.24, "Alpa Centauri A": 4.37, "Barnards's Star": 5.96]
let closeStars = starDistanceDict.filter{$0.value < 5.0}
closeStars
//:13.4.Метод reduce(_:_:)
//Метод reduce(_:_:) позволяет объединить все элементы коллекции в одно значение в соответствии с переданным замыканием
//Листинг 13.10
let cash = [10, 50, 100, 500]
let total = cash.reduce(210, +)

//Листинг 13.11
let cash11 = [10, 50, 100, 500]
let total11 = cash11.reduce(210, {$0*$1})
print(total11)
let totalTwo = cash11.reduce(210, {x,y in x - y})
print(totalTwo)

//:13.5. Метод flatMap(_:)
//Метод flatMap(_:) отличается от map(_:) тем, что всегда возвращает плоский одномерный массив

//Листинг 13.12
let numbers12 = [1, 2, 3, 4]
let flatMapped = numbers12.flatMap { Array(repeating: $0, count: $0)}
print(flatMapped)

//Листинг 13.13
let someArray13 = [[1, 2, 3, 4, 5],[11, 44, 1, 6],[16, 403, 321, 10]]
//все четные
let filterSomeArray = someArray13.flatMap{$0.filter{ $0 % 2 == 0}}
print(filterSomeArray)

//:13.6. Метод zip(_:_:)
//Функция zip(_:_:) предназначена для формирования последовательности пар значений, каждая из которых составлена из элементов двух базовых последовательностей
//Листинг 13.14
let collectionOne = [1, 2, 3]
let collectionTwo = [4, 5, 6]
var zipSequence = zip(collectionOne, collectionTwo)

// генерация массива из сформированной последовательности
Array(zipSequence)

// генерация словаря на основе последовательности пар значений
let newDictionary = Dictionary(uniqueKeysWithValues: zipSequence)
print(newDictionary)

