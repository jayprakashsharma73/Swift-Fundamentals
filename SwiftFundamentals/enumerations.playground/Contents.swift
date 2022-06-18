// declaring enumeration
enum idCard{
    case passport
    case aadhar
    case voter
}

//single line declaration
enum direction{
    case east, west, north, south
}

var idCards = idCard.aadhar
idCards = .aadhar

// switch case
switch idCards {
case .aadhar:
    print("Aadhar card: \(idCard.aadhar)")
case .passport:
print("Passport: \(idCard.passport)")
default:
print("Voter")
}

//caseIterable
enum fuel:CaseIterable{
    case petrol, diesel, gasoline
}
let numberOfCases = fuel.allCases.count

for fuels in fuel.allCases{
    print(fuels)
}
// Associated values
enum driveCar{
    case license(licenseNumber:Int)
    case petrol(Int)
    case age
}

let validlicense = driveCar.license(licenseNumber: 98231)
let petrol = driveCar.petrol(4)

switch validlicense {
case .license, .petrol:
    print("You have valid \(validlicense) and required \(petrol), continue for driving")
default:
    print("You don't have valid license")
}

//Raw values - default values
enum grade:Int{
    case first = 90
    case second = 80
    case third = 70
    case fail = 60
}

let gradingSystem = grade.first
switch gradingSystem {
case .first:
    print("First:\(grade.first.rawValue)")
case .second:
    print("Second: \(grade.second.rawValue)")
case .third:
    print("Third: \(grade.third.rawValue)")
default:
    print("Fail")
}

//implicitly assigned raw values
enum Planet: Int {
    case mercury = 2, venus, earth, mars, jupiter, saturn, uranus, neptune
}
Planet.mercury.rawValue
Planet.venus.rawValue
Planet.mars.rawValue

let planetValue = Planet(rawValue: 10)

//recursive enumeration
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let num = ArithmeticExpression.number(10)
let num1 = ArithmeticExpression.number(20)
let add =  ArithmeticExpression.addition(num, num1)
let mul = ArithmeticExpression.multiplication(add, ArithmeticExpression.number(10))

func calculation(expression:ArithmeticExpression) ->Int{
    switch expression {
    case .number(10):
        return 10
    default:
        return 10
    }
}
// Associated values
enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}
func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 12))


