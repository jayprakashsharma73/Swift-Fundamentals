// Declaring Array
var array:[String] = ["Jay", "Rahul", "Amit"]
// Another way to declare array
let array1: Array<Int> = [12,21,32,32,3,2]
print(array,array1)


// Repeating numbers in array
let collectionOfNumbers =  Array(repeating: 12.0, count: 5)
print(collectionOfNumbers)

// Replacing values to specified range
array[1...2] = ["Anup", "Kohli", "Sundar"]
print(array)


//
for (index, value) in array.enumerated() {
    print("Item \(index): \(value)")
}
