import UIKit

//: 17 Структуры
//СИНТАКСИС
//struct ИмяСтруктуры {
    // свойства и методы структуры
//}

//Листинг 17.2
struct PlayerInChess {}
var oleg: PlayerInChess

//:17.2.Свойства в структурах
//Листинг 17.5
struct PlayerChess5 {
    var name = ""
    var wins: UInt = 0
}
var oleg5 = PlayerChess5(name: "Oleg", wins: 32)
var maks = PlayerChess5()

//:17.3.Структура как пространство имен
//Листинг 17.6
struct PlayerInChess6 {
    var name: String = "Игрок"
    var wins: UInt = 0
}
var ruslan = PlayerInChess6()
//доступ к свойству
ruslan.name

//Листинг 17.7
var ilya = PlayerInChess6(name: "Илья", wins: 32)
ilya.wins
ilya.wins = 33
ilya.wins

//:17.4.Собственные инициализаторы
//Листинг 17.8
struct PlayerInChes8 {
    var name: String
    var wins: UInt = 0
    init(name: String) {
        self.name = name
    }
}
var vlad = PlayerInChes8(name: "Влад")
var vladMuhin = PlayerInChes8(name: "Влад")
var vladLapin = vladMuhin

//:17.5.Методы в структурах
//Листинг 17.9
struct UserInChes {
    var name: String
    var wins: UInt
    func description() {
        print("Игрок \(self.name) имеет \(self.wins) побед")
    }
}

var ivan = UserInChes(name: "Ivan", wins: 12)
ivan.description()

//Изменяющие методы

//Листинг 17.10
struct PlayerInXbox {
    var name: String
    var wins: UInt
    // метод, изменяющий значение свойства wins
    mutating func addWins(countOfWins: UInt){
        self.wins += countOfWins
    }
}

var pavel = PlayerInXbox(name: "Павел", wins: 10)
pavel.wins
pavel.addWins(countOfWins: 2)
pavel.wins
