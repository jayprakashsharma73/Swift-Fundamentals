//Methods - function inside the property
struct Person {
    var clothes: String
    var shoes: String
    func describe() {
    }
}
let taylor = Person(clothes: "Shirt", shoes: "Bata")
print("I like wearing clothes: \(taylor.clothes) and shoe : \(taylor.shoes)")

//Structure - stored property
struct VehicleType{
    var car:String
    var bus:String
    var bike:String
}

var car = VehicleType(car: "Audi", bus: "Volvo", bike: "bullet")
car.bike = "Activa"
print(car.bike)

//Lazy Property
struct CarType{
    var car:String
    var bus:String = "Volvo"
    lazy var bike = String()
}
var carType = CarType(car: "Audi")

//Property wrapper
@propertyWrapper
struct Ten {
    private var number = 0
    var wrappedValue: Int {
        get { return number * 2 }
        set { number = newValue * 2 }
    }
}

print(Ten())

struct SmallRectangle {
    @Ten var height: Int
    @Ten var width: Int
}

var rectangle = SmallRectangle()
print(rectangle.height)

rectangle.height = 10
print(rectangle.height)

rectangle.height = 24
print(rectangle.height)

//
var completionHandlers: [() -> Void] = []
func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}


//Computed properties
struct ComputerParts{
    var price:Int
    var quantity:Int
    var totalPrice:Int{
        get{
            return price * quantity
            
        }
        set{
             quantity = 0
        }
    }
}
var objPrice = ComputerParts(price: 200, quantity: 4)
objPrice.totalPrice
objPrice.quantity

//didSet - willSet
struct DidWill {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var tom = DidWill(clothes: "Shirt")
tom.clothes = "pant"

//Static property
struct TaylorFan {
   static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)
