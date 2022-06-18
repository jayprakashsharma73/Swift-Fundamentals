// Arithmetic operators
struct ArithmeticOperators{
    var x:Float
    var y:Float
}

// Using Extension
extension ArithmeticOperators{
   static func + (x:ArithmeticOperators, y:ArithmeticOperators) -> ArithmeticOperators {
    return ArithmeticOperators(x: x.x + x.y, y: x.y + y.y)
    }
}
var objAdd = ArithmeticOperators(x: 20, y: 10)
var objAdd1 =  ArithmeticOperators(x: 30, y: 30)
var add = objAdd + objAdd1

//
prefix operator +++
extension ArithmeticOperators{
    static prefix func +++ (x: inout ArithmeticOperators) -> ArithmeticOperators {
    return x
        
    }
}

var toBeDoubled = ArithmeticOperators(x: 1.0, y: 4.0)
let afterDoubling = +++toBeDoubled
