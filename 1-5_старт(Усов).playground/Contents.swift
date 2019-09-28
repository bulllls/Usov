var a1: Int8
var b1: UInt8
 a1 = Int8.min
 b1 = UInt8.max
print(a1,b1)

var c1 = 7
var d1: Int = 8
print("переменная c =>",c1,"переменная d =>",d1)
var e1 = c1
 c1 = d1
 d1 = e1
print("переменная c =>",c1,"переменная c =>",d1)

let one: Float = 4.5;
let two: Float = 1.2;
var three: Double = 12;

let zOne: Int = 18; let zTwo: Float = 11; let zThree: Double = 5;
var summa: Float = Float(zOne) + Float(zTwo) + Float(zThree);

var intSumma: Int = Int(zOne) * Int(zTwo) * Int(zThree);

//truncatingRemainder(dividingBy: numTwo) - остаток от деления
var duSumma: Double = Double(zTwo).truncatingRemainder(dividingBy: zThree);
print("Сложение =>", summa, "Умножение=>", intSumma, "Остаток от деления =>", duSumma);

var a: Int = 2;
var b: Int = 3;
var x: Int = (a + 4 * b) * (a - 3 * b) + a * a;
print("x=",x);

var c: Float = 1.75;
var d: Float = 3.25;

var y: Float = 2 * ((c + 1) * 2) + 3 * (d + 1)
print("y=",y);

let length: Int = 21;
let s: Int = length * length;
print("Площадь квадрата =",s);
//С=2pr
let p: Float = 3.14;
let C: Int = 2 * Int(p) * length;
print("Длинна окружности =", C);

var text: String = "Hello";
let char: Character = "R";
var randomNumber1: Int = 7;
var randomNumber2: Int = 4;

let done: String = text + String(char) + String(randomNumber1 + randomNumber2);
print(done);
//:((
let w: Character = "*";
print(w,"  ",w,"  ",w );
print("",w,"",w,w,"",w);
print(" ",w,"  ",w );
//--------
var day = "05";
var month = "Июнь";
var year = 2019;
print(year, month, day);

var yes: Bool = true;
var no: Bool = false;

let positive = yes || no;
let negative = !yes && no;
print (positive, negative);

( ( true && false ) || true )
true && false && true || ( true || false )
false || ( false || true ) && ( true && false )

let myName = "Ruslan";
var myРeft: Double = 7.7;
var myHeigth: Int = 180;

var imt: Double = myРeft / Double(myHeigth) * 2;
print(myName, imt);
