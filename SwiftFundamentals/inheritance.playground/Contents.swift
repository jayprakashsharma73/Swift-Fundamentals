//Inheritance call the properties of parent class in child class

// Defining base class
class ParentClass{
    var parentName = String()
}
    func PrintParentName(parentName:String) -> String {
        return "I am Parent: \(parentName)"
}
    
var objParent = ParentClass()
var objPrintParentName = PrintParentName(parentName: "Rahul")
objParent.parentName = "Kumar"

// Declaring child class
class ChildClass:ParentClass{
    var childName = String()
}

//overriding function
  func PrintParentName(child:String) -> String {
        return "I am Child: \(child) of parent: \(objParent.parentName)"
}

var objChild = ChildClass()
objChild.childName
PrintParentName(child: "Anuj" )
PrintParentName(parentName: "Rahul")

