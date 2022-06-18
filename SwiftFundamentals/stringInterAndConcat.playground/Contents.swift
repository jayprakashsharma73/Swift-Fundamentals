var name = "Jay"
var middleName = "Prakash"
let countryCode:Int = +91; let number:Int = 8946063740

// String Interpolation
debugPrint("The country code is \(countryCode) and the number is \(number)")

//Separator and terminator
print(name, separator: "", terminator: "Sharma")

// Initializing empty string
var emptyString =  String()

// Start and end index
//let greeting = "Guten Tag!"
//greeting[greeting.startIndex]
//greeting[greeting.index(before: greeting.endIndex)]
//greeting[greeting.index(after: greeting.startIndex)]
//let index =  greeting.index(greeting.startIndex, offsetBy: 6)
//print(greeting[index])
//
//for index in greeting.indices {
//    print("\(greeting[index])", terminator: ",")
//}


var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there!"

welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there"

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome now equals "hello"


let greeting = "Hello, world!"
let index = greeting.firstIndex(of: "m") ?? greeting.endIndex
let beginning = greeting[..<index]
// beginning is "Hello"

// Convert the result to a String for long-term storage.
let newString = String(beginning)
