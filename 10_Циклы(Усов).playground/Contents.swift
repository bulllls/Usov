//Циклы
//10.1.Операторповторенияfor
//СИНТАКСИС
//for переменная in последовательность {
//    блок_кода
//}
//Листинг 10.1
var totalSum = 0
for i in 1...10 {
    totalSum += i
}

//Листинг 10.2
var totalNum = 0
var i = 0
for i in 1...10 {
    totalNum += i
}
totalNum
i

//Листинг 10.3
var totalSum3 = 0
for i in (1...10).reversed() {
    totalSum3 += i
}

//Листинг 10.4
for i in stride(from: 1, through: 5, by: 2) {
    print(i)
}
for i in stride(from: 1, to: 5, by: 2) {
    print(i)
}

//Листинг 10.5
var myMusicStyle = ["Rock", "Jazz", "Pop"]
for musicName in myMusicStyle {
    print("Я люблю \(musicName)")
}

//Листинг 10.6
var contriesAndBlocks = ["Russia":"EAES", "USA":"NATO", "Franch":"EC"]
for (countryName, blockName) in contriesAndBlocks {
    print("\(countryName) вступила в \(blockName)")
}
//получить только ключ или только значение
for (countryName, _) in contriesAndBlocks {
    print("Country - \(countryName)")
}
//метод enumerated(), позволяет преобразовать массив таким образом, чтобы с помощью цикла for-in получить в виде кортежа каждую отдельную пару «индекс-значение»
//Листинг 10.8
for (index, musicName) in myMusicStyle.enumerated() {
    print("\(index+1). I love \(musicName)")
}

//Листинг 10.9
let myName = "Ruslan"
for oneChar in myName {
    print(oneChar)
}

//Листинг 10.10
// словарь с результатами игр
var resultOfGames = ["Red Wings":["2:1","2:3"], "Capitals":["3:6","5:5"], "Penguins":["3:3","1:2"]]
// обработка словаря
for (teamName, results) in resultOfGames {
    // обработка массива результатов
    for oneResult in results {
        print("Игра с \(teamName) - \(oneResult)")
    }
}
//10.2.Операторы повторения while и repeat while
//Циклwhile
//СИНТАКСИС
//while условие {
//    блок_кода
//}

//Листинг 10.11
// начальное значение
var e = 1
// хранилище результата сложения
var resultSum = 0
 // цикл для подсчета суммы
while e <= 10 {
    resultSum += e
    e += 1
}
resultSum
//Оператор while — это цикл с предварительной проверкой условия,то есть вначале проверяется условие, а уже потом выполняется код

//Цикл repeat while
//В противоположность оператору while оператор repeat while является циклом с последующей проверкой условия
//СИНТАКСИС
//repeat {
//    блок_кода
//} while условие

//Листинг 10.12
// начальное значение
var q = 1
// хранилище результата сложения
var resultSum12 = 0
// цикл для подсчета суммы
repeat {
    resultSum12 += q
    q += 1
} while q <= 10
resultSum12

//10.3.Управление циклами
//Оператор continue
//Листинг 10.13
for i in 1...10 {
    if i%2 == 0 {
        continue
    } else {
        print(i)
    }
}

//Оператор break
import Foundation
for i in 1...10 {
    let randNum = Int(arc4random_uniform(10))
    if randNum == 5 {
        print("Итерация номер \(i)")
        break
    }
}


//Может возникнуть ситуация, когда из внутреннего цикла необходимо прервать выполнение внешнего, — для этого в Swift существуют метки
//Листинг 10.15
mainLoop: for i in 1...5 {
    for y in i...5 {
        if y == 4 && i == 2 {
            break mainLoop
        }
        print("\(i) - \(y)")
    }
}

//Homework-------------------------------------------//
var Students: [String:[String:UInt]] = [:]
Students = ["Filistovich":["1 April":2, "4 May":2],
            "Jobs":["4 April":2, "3 May":2],
            "Geits":["8 April":2,"21 May":2]]
var sumAll = 0
for (studentName, studentResults) in Students {
    // обработка массива результатов
    var summ = 0
    for (_, oneStudentResult) in studentResults {
        summ = summ + Int(oneStudentResult)
        sumAll = sumAll + Int(oneStudentResult)
        //print(oneStudentResult)
    }
    print("Средний балл \(studentName) - \(summ / 2)")
}
print(sumAll / Students.count)
//---------------- Решение в книге ----------------//
import Foundation
var Journal: [String:[String:UInt]]
Journal =
    ["Усов":["01-01-2017":5,"05-01-2017":5],
     "Бойко":["01-01-2017":3,"05-01-2017":4],
     "Монро":["01-01-2017":2,"05-01-2017":3]]
var gpaOfStudents:[String:Double] = [:]
var countOfAllMarks = 0
var sumOFAllMarks = 0

for mark in Journal {
    var sumOfMarksOfStudent = 0
    for lesson in mark.1 {
        sumOfMarksOfStudent += Int(lesson.1)
    }
    let gpaOfOneStudent = Double(sumOfMarksOfStudent) / Double(mark.1.count)
    gpaOfStudents[mark.0] = gpaOfOneStudent
    print("Средний бал \(mark.0) - \(gpaOfOneStudent)")
}
// высчитываем средний бал за группу
var gpaGroup = Double(sumOFAllMarks) / Double(countOfAllMarks)
// выводим на консоль информацию о среднем балле группы
print("Средний бал группы - \(gpaGroup)")







//2 часть----------------------------------//
typealias Chessman = [String:(alpha:Character,num:Int)?]
var Chessmans: Chessman = ["Белый король":("d",8), "Черный конь":(nil), "Черная королева":("e",8)]



for (сhesName, coordinates) in Chessmans {
    if coordinates != nil {
        print("Фигура \(сhesName) находиться на поле с координатами \((coordinates)!)")
    } else {
        print("Фигура \(сhesName) - убит")
    }
}


