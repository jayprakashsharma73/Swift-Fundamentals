// Declaring closure
var printSomething = { (name:String) -> (String)  in
    return name
}
printSomething("Jay")

// closure with parameters
var arrayNum = { (num:[Int]) -> [Int] in
    return num
    
}
//Sorting in closure
var Array = arrayNum([112,12,3,2,32,233,2])
var sortedArray = Array.sorted (by: { (num1, num2) -> Bool in
   return num1 < num2
})

// another sorting way - implicit return from single expression
var ascendingArray = Array.sorted { (num1, num2) in num1 > num2}
print(ascendingArray)

//shorthand arguments
print(ascendingArray.sorted(by:{ $0 < $1}))

//Operator method
print(Array.sorted(by: > ))

// trailing closure
func trailingClosure(Array: ([Int]) -> ([Int])){
}
let sorted = Array.sorted(){ $0 > $1}
