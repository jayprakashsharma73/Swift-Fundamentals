// Declaring empty dictionaries
var emptyDictionary:[String:Int] = [:]

var inventory:[String:Int] = ["Pen":10, "Book": 12, "Eraser": 21]
//inventory = ["Copy": 09] // Update new data completely
inventory["Pencil"] = 089 // Add new data to existing data

var shop:[Int:String] = [10:"Pen", 12:"Book", 21:"Eraser"]
shop[09] = "Copy"

print(emptyDictionary)
print(inventory)
print(shop)

//Print keys and values
print("Keys: \(inventory.keys) and Values are \(inventory.values)")
print("Keys: \(shop.keys) and Values are \(shop.values)")

//Updating values
if let oldValue = inventory.updateValue(20, forKey: "Pen"){
    print("Old value: \(oldValue)")
}
//
let newvalue = inventory["Pen"]
print(newvalue!)

//Iteration over dictionaries
for keys in inventory.keys{
    print(keys)
}
//
for (keys, values) in inventory{
    print("Keys:\(keys),Values:\(values)")
}
