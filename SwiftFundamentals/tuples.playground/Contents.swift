// Tuples containing different data types
var userInfo = ("Jay", 25 , true)
var personInfo = (name: "Prakash", age: 25)
print(personInfo.name)
print(type(of: userInfo))

//Decomposing tuples
var (name, age, isActive) =  userInfo
print("Name: \(name), Age: \(age), is active: \(isActive)")
