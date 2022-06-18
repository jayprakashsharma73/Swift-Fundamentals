// Declaring function - no parameter - no return type
func printSomething(){
    print("Printing Something")
}
printSomething()

// function - no parameter but return type
func display() -> String{
    return "Displaying Something"
}
display()

// function with single parameter but no return type
func showSomething(name: String){
    print("Printing: \(name)")
}
// Calling function
showSomething(name: "Jay")

//Function with multiple parameter - no return type
func userInfo(name:String, age:Int){
    print("Name: \(name) and age: \(age)")
}
userInfo(name: "Prakash", age: 25)

//Function with parameters - retrun type
func addSomething(a:Int, b:Int) -> Int{
    print("Addition: \(a+b)")
    return a + b
}
addSomething(a: 10, b: 2)

// Function with parameter - multiple return types
func minMax(num:[Int]) -> (minValue:Int, maxValue:Int){
    var currentMinValue = num[0]
    var currentMaxValue = num[0]
    //Iterating over array
    for value in num[1..<num.count] {
        // Condition
        if value < currentMinValue {
            currentMinValue = value
        }else if value > currentMaxValue {
            currentMaxValue = value
        }
    }
    print("Min Value \(currentMinValue), and max Value: \(currentMaxValue)")
    return (currentMinValue, currentMaxValue)
}
minMax(num: [210,230,132,2,3231,221,322])

//Optional tuple return type
func findMinMax(num:[Int]) -> (minValue:Int, maxValue:Int)?{
    if num.isEmpty{
        return nil
    }
    var currentMinValue = num[0]
    var currentMaxValue = num[0]
    //Iterating over array
    for value in num[1..<num.count] {
        // Condition
        if value < currentMinValue {
            currentMinValue = value
        }else if value > currentMaxValue {
            currentMaxValue = value
        }
    }
    return (currentMinValue, currentMaxValue)
}
let a = findMinMax(num: [211,2,34,12,2,232,123])

//Optional binding to check Whether it is returning nil or not
if let bindMinMax = a{
    print("Min: \(bindMinMax.minValue) Max: \(bindMinMax.maxValue)")
}else{
    print("Array is nil")
}

//function - implicit return type
func hello(name:String) -> String{
    "Hello" + name
}
print(hello(name: "Jay"))

//Function with argument label
func calculate(a num1:Int, b num2:Int) -> Int{
    num1 + num2
}
print(calculate(a: 10, b: 20))

//Function without argument label
func stringAdd(_ name:String, _ lastName:String) -> String{
    name+lastName
}
print(stringAdd("Jay",  "Sharma"))

//Function - Default Parameter Value
func defaultValue(num:Int, num1:Int = 2) -> Int {
    return num * num1
}
print(defaultValue(num: 2))

//Variadic Parameter
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
print(arithmeticMean(1, 2, 3, 4, 5))

// Using inout we can make parameters mutablearithmeticMean())
func charAdd(letters: inout String) -> String{
 let firstName = "Sharma"
  letters = firstName
  return letters
}

//Swap function
var c = "Jay"
var b = "prakash"
swap(&c, &b)
print(c,b)

//Function types
func addNumber(a:Int, b:Int)-> Int{
    return a + b
}

var addingNumbers = addNumber
addingNumbers(10,20)

//function types as parameter types
func printAdd(addingNumbers: (Int,Int)-> Int, a:Int, b:Int ){
    print(a,b)
}

addNumber(a: 10, b: 20)
