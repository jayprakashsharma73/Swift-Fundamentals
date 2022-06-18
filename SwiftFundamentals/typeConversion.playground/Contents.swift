var name:String = "Jay Prakash"
var age:Int = 25

//Data type conversion
var conName = Int(name)
print(type(of: conName))
var conAge =  String(age)
print(type(of: conAge))


var concatNameConAge = name +  conAge
print(concatNameConAge)
