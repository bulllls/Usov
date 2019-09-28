import UIKit

//: 18 Классы
//18.2.Свойства классов
//Листинг 18.1
class Chessman {
    let type: String
    let color: String
    var coordinates: (String, Int)? = nil
    let figureSymbol: Character
    init(type: String, color: String, figure: Character) {
        self.type = type
        self.color = color
        self.figureSymbol = figure
    }
}

var kingWhite = Chessman(type: "King", color: "White", figure: "♔")




//типы фигур
enum ChessmanType {
    case king
    case castle
    case dishop
    case pawn
    case knight
    case queen
}

//цвета фигур
enum ChessmanColor{
    case black
    case white
}

class Chessman2 {
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figyreSymbol: Character
    init(type: ChessmanType, color: ChessmanColor, figure: Character){
        self.type = type
        self.color = color
        self.figyreSymbol = figure
    }
}

var KingBlack = Chessman2(type: .king, color: .black, figure: "♚")

//:18.3.Методы классов
//Листинг 18.3
class Chessman3 {
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figyreSymbol: Character
    init(type: ChessmanType, color: ChessmanColor, figure: Character) {
        self.type = type
        self.color = color
        self.figyreSymbol = figure
    }
    //метод установки координат
    func setCoordinates(char c:String, num n: Int){
        self.coordinates = (c, n)
    }
    //метод, убивающий фигуру
    func kill() {
        self.coordinates = nil
    }
}
var QueenWhite = Chessman3(type: .queen, color: .white, figure: "♕")


//:18.4.Инициализаторы классов
//Листинг 18.4

class Chessman4 {
    let type: ChessmanType
    let color: ChessmanColor
    var coordinates: (String, Int)? = nil
    let figyreSymbol: Character
    
    init(type: ChessmanType, color: ChessmanColor, figure: Character) {
        self.type = type
        self.color = color
        self.figyreSymbol = figure
    }
    
    init(type: ChessmanType, color: ChessmanColor, figure: Character, coordinates: (String, Int)){
        self.type = type
        self.color = color
        self.figyreSymbol = figure
        self.setCoordinates(char: coordinates.0, num: coordinates.1)
    }
    
    func setCoordinates(char c:String, num n: Int){
        self.coordinates = (c, n)
    }
    func kill() {
        self.coordinates = nil
    }
}

var Queenblack = Chessman4(type: .queen, color: .black, figure: "♛", coordinates: ("A", 6))

//:18.5.Вложенные типы
class Chessman5 {
    //типы фигур
    enum ChessmanType5 {
        case king
        case castle
        case dishop
        case pawn
        case knight
        case queen
    }
    //цвета фигур
    enum ChessmanColor5{
        case black
        case white
    }
    let type: ChessmanType5
    let color: ChessmanColor5
    var coordinates: (String, Int)? = nil
    let figyreSymbol: Character
    init(type: ChessmanType5, color: ChessmanColor5, figure: Character){
        self.type = type
        self.color = color
        self.figyreSymbol = figure
    }
}

//:Ссылки на вложенные типы
//Листинг 18.6
var linkToEnumColor = Chessman5.ChessmanColor5.black
var linkToEnumTyper = Chessman5.ChessmanType5.knight
