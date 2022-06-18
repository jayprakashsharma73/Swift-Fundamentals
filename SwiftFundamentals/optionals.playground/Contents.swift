// Declaring optionals
var firstName:String = "Jay"
var middleName:String?  = nil // Optional declared by ?
var address:String! = nil
var lastName:String? = "Sharma"
print(type(of: address))

// Force unwrapping of optional to be done only when you are aware that the value is not nil - using !
if middleName != nil && lastName != nil {
    print("Full name: \(firstName) \(middleName!) \(lastName!)")
}else{
    print("First name: \(firstName)")
}
// Optional Binding - Binding optional values to variables in order to achieve values when you are not aware of vales might contain nil values or might not - no need to use ! for unwrapping
if let userInfo = middleName, let add = address, let lastname = lastName{
    print("Full name: \(firstName) \(userInfo) \(lastname) and address: \(add)")
}else{
    print("No data found")
}

// Optional chaining
let OptionalChaining = address?.uppercased()
let MiddleName = middleName?.uppercased()

// Nil Coalescing operator
let Last = lastName ?? "No value"
