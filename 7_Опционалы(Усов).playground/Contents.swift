//Опциональные типы данных

var v: Int = 1
//Опциональная переменная
var o: Int?
// v + 0  error

//Разворачивание опционального типа
// 1
var a: Int = 1
var b: Int?

if b != nil {
    a + b!
} else {
    print("b == nil")
}

//Способ 2
var c: Int = 1
var d: Int? = 1

if let dUnwraped = d {
    c + dUnwraped
}
// Более коротко 2 способ
if let d = d {
    c + d
}

//Способ 3
var e: Int = 1
var f: Int? = nil

e + (f ?? 0)

//Практическое применение под способ 1
var data: String? = "Hi XCode"
var error: String? = nil

if error == nil {
    print("Передача данных успешна")
    if data != nil {
        print("Приняли: " + data!)
    }else {
        print("Ничего не пришло");
    }
} else {
    print("Передача данных с ошибкой: " + error!)
}

//Практическое применение под способ 2

var data2: String?
var error2: String?

if let error = error2 {
    print("Передача данных с ошибкой: " + error)
} else {
    print("Передача данных успешна.")
}
if let data2 = data2 {
    print("Приняли: " + data2)
} else {
    print("Ничего не пришло");
}

//Практическое применение под способ 3
