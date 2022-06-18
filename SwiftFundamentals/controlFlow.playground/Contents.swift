//Control Flow - for loop - while loop
//For Loop
for number in 1...10{
    print(number)
}

//
let base = 3
let power = 10
for answer in 1...power {
    print(answer)
}

let minutes = 130
//for tickMark in 0..<minutes {
//    // render the tick mark each minute (60 times)
//    print(tickMark)
//}
let minuteInterval =  10
for tickMark in stride(from: 10, to: minutes, by: minuteInterval) {
   
    print(tickMark)
}


//While loop
var age = 24
var num = 24
while age != 24 {
    print("age is not equal to num \(age)")
    
}
print("Equal")

//repeat while
repeat{
}while age != 24
print("Not Equal")

//
