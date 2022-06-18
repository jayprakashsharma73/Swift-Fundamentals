//Declaring instance of methods inside struct
struct Car{
    var breakes = "Break Applied"
    func ApplyBreaks(car: String) -> String{
        return car
    }
}
let objCar = Car()
print(objCar.ApplyBreaks(car: "\(objCar.breakes) for Audi"))
objCar.breakes

//self property - mutating function
struct Number{
    var num = 1
   mutating func IncrementNumber(number:Int) -> Int {
    self.num += number
    return num
    }
}

var ObjNumber = Number()
ObjNumber.IncrementNumber(number: 10)
ObjNumber.num
ObjNumber

//type methods
class SomeClass{
    class func SomeClassMethod(){
        print("I am Some class type method")
    }
}
SomeClass.SomeClassMethod()
print(type(of: SomeClass.SomeClassMethod()))

//Static
struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    static var age: Int = 25
}

let fan = TaylorFan(name: "James")
print(TaylorFan.age)
