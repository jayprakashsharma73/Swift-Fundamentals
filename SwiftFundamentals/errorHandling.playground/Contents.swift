// Error Handling
enum driveCar:Error{
    case insufficientPetrol(requireQuantity:Int)
    case engineFailure
}

struct StartCar {
    
      func DriveCar(minPetrol:Int) throws -> String {
         if minPetrol < 3 {
         throw driveCar.insufficientPetrol(requireQuantity: 3)
     }
    return "Car Started"
    }
}

var objDriveCar = StartCar()


//Do try catch block
do {
    try objDriveCar.DriveCar(minPetrol: 3)
} catch driveCar.insufficientPetrol(let neededPetrol) {
    print("There is insufficient fuel, required fuel is \(neededPetrol)")
} catch driveCar.engineFailure{
    print("Engine failed")
}





