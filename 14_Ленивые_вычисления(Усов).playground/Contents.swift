//: 14 Ленивые вычисления
//:14.1.Понятие ленивых вычислений
//«Ленивый» в Swift звучит как lazy Можно сказать, что lazy — синоним производительности

//Существует два типа ленивых элементов:
// lazy-by-name — значение элемента вычисляется при каждом доступе к нему;
// lazy-by-need — элемент вычисляется один раз при первом обращении к нему, после чего фиксируется и больше не изменяется

//Листинг 14.1
var countryDict = ["RUS" : "Россияская Федерация", "BEL" : "Беларусь", "UKR" : "Украина"]
// все ключи словаря countryDict
var keys = countryDict.keys

//Swift помогает вам экономить ресурсы компьютера Так происходит
//и в данном случае Получив значение типа LazyMapCollection, вы
//можете делать с ним все, что посчитаете нужным, например преобразовать в массив или набор

//Листинг 14.2
var mySet = Set(keys)
var myArray = Array(keys)

//:14.2.Замыкания в ленивых вычислениях
//Листинг 14.3
var arrayOfNames = ["Helga", "Bazil", "Alex"]
print(arrayOfNames.count)

let nextName = { arrayOfNames.remove(at: 0) }
print(arrayOfNames.count)
nextName()
print(arrayOfNames.count)


//:14.3.Свойство lazy
//Листинг 14.4
var myCollection = [1, 2, 3, 4, 5, 6].lazy.map{$0 + 1}

//Листинг 14.5
var myCollection2 = [1, 2, 3, 4, 5, 6]
    .lazy
    .map{$0 + 1}
    .filter{$0 % 2 == 0}
Array(myCollection2)
