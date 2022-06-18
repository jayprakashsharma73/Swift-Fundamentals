//Initialization - setting initial values to properties - with structure - without parameters
struct VehicleType{
    var carType:String
    var truckType:String
    var bikeType:String
 
//Initialization
    init() {
        carType = "Xuv"
        truckType = "Volvo"
        bikeType = "Racing"
    }
}
let objVehicleType = VehicleType()
objVehicleType.bikeType


//Initialization with parameters
struct CarName{
    var car:String
    var car1:String
    var car2:String
    
//Initialization - Designated
    init(car:String, car1:String, car2:String) {
        self.car = car
        self.car1 = car1
        self.car2 = car2
    }
    
}
let objCar = CarName(car: "Audi", car1: "Bmw", car2: "Xuv")
objCar.car



// Initializations with classes - without parameters
class Vehicle{
    var vehicle:String
    var vehicel1:String
    var vehicle12:String
    
//Initialization - Designated
    init(car:String, car1:String, car2:String) {
        self.vehicle = car
        self.vehicel1 = car1
        self.vehicle12 = car2
    }
    
    
}
let objVehicle = Vehicle(car: "Honda", car1: "Hyundai", car2: "Bmw")
objVehicle.vehicle

//Init with optional types
class Messages {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let cheeseQuestion = Messages(text: "Do you like cheese?")
cheeseQuestion.ask()
cheeseQuestion.response = "Yes"

//Using optional binding to check response
if let reply = cheeseQuestion.response{
    print("\(reply), I like cheese")
}else{
    print("No reply")
}
