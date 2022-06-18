//Structure - Value type
struct UserInfo{
    var name:String
    var age:Int
}
var objUserInfo = UserInfo(name: "Jay", age: 25)

//accessing properties
objUserInfo.name = "Sharma"
print(objUserInfo.name)

//Class - reference type
class Person{
    var name:String
    var age:Int
    var dept:String?
    
//Intializing required data types
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
}

var objPerson = Person(name: "Prakash", age: 25)
