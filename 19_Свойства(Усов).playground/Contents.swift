import UIKit

//: 19 Свойства
//Листинг 19.1
class AboutMan{
    let firstName = "Ruslan"
    var secondName = "Vladimirovich"
    lazy var wholeName: String = self.generateWholeName()
    func generateWholeName() -> String{
        return self.firstName + " " + self.secondName
    }
}
var Me = AboutMan()
Me.wholeName
//:Вычисляемые свойства
//Листинг 19.3
class AboutMan3{
    let firstName = "Adam"
    var secondName = "Nil"
    var wholeName: String {
        return self.firstName + " " + self.secondName
    }
}
var Me3 = AboutMan3()
Me3.wholeName

Me3.secondName = "Jobs"
Me3.wholeName


//:19.2.Контроль получения и установки значений
//Геттер и сеттер вычисляемого свойства
