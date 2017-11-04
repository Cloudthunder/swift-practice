import Foundation

//let apples = 17
//print("I have " + String(apples + 1) + " apples")
//print("I have \(apples + 1) apples")
//var apples : Int? = -9001
//print(apples!)
//if let veryFinePeeledApples = apples {
//    print("I have \(veryFinePeeledApples) apples")
//
//
//
//}
//else {
//    print("Where are my apples???!!!!")
//
//
//}
//print("enter a number")
//let number1 = readLine()
//
//print("enter another number")
//let number2 = readLine()
//
//print("enter a symbol")
//let operation1 = readLine()
//
//guard let unwrappednum1 = number1
//    else{
//        exit(1)
//}
//
//guard let unwrappednum2 = number2
//    else {
//        exit(1)
//}
//
//guard let unwrappedop1 = operation1
//    else{
//        exit(1)
//
//}
//if unwrappedop1 == "+"
//    {
//print(Double(unwrappednum1)! + Double(unwrappednum2)!)
//}
//else if unwrappedop1 == "*" {
//print(Double(unwrappednum1)! * Double(unwrappednum2)!)
//}
//else if unwrappedop1 == "-"
//{
//print(Double(unwrappednum1)! - Double(unwrappednum2)!)
//}
//else if unwrappedop1 == "/"
//{
//print(Double(unwrappednum1)! / Double(unwrappednum2)!)
//}
//print ("Welcome \(name!)!")

//enum Direction {
//    case north
//    case east
//    case south
//    case west
//}
//let myDirection = Direction.east
//if myDirection == Direction.east
//{
////print("I am facing \(Direction.east))")
////}
////let coordinate = (x:2, y:3)
////print(coordinate.x)
//
//struct person{
//    var name : String
//    var age : Int
//    var height : Double
//    var male : Bool
//}
//struct tablet{
//    var age : Int
//    var height : Double
//    var name : String
//    var battery : Int
//}
//
//struct pot{
//    var name : String
//    var age : Int
//    var height : Double
//    var material : String
//}
//
//let me = person(name: "Cloudthunder", age: 14, height: 65.5, male: true)
//let elektric = tablet(age: 5, height: 15, name: "Cloud's Tablet", battery: 92)
//let inanimateObj = pot(name: "Billy", age: 40, height: 8, material: "ceramic")
//
//print(me)
//print(elektric)
////print(inanimateObj)
//
//func square(x: Double) -> Double{
//    return x*x
//}
//
//
//square(x: 2)
//
//print("Enter the fahrenheit")
//
//let F = Double(readLine()!)

//if F != nil{
//print((5.0/9.0) * (F!-32.0))
//}
//else{
//print("numbers only!!")
//}
func far_to_c(x: Double)->Double{
    return ((5.0/9.0) * (x-32))
}
func c_to_far(x: Double)->Double{
    return ((9.0/5.0) * x + 32.0)
}
func c_to_k(x: Double)->Double{
    return (x + 273.15)
}
func far_to_k(x: Double)->Double{
    return(c_to_k(x: far_to_c(x: x)))
}
func k_to_c(x: Double)->Double{
    return(x - 273.15)
}
func k_to_far(x: Double)->Double{
    return(c_to_far(x: k_to_c(x: x)))
}

print("enter a Temperature")
let T   = readLine()
let num = T!.components(separatedBy: " ")

if(num[1] == "F"){
    print("\(Double(num[0])!) = \n\(Double(far_to_c(x: Double(num[0])!))) F,\n\(Double(far_to_k(x: Double(num[0])!))) K")
}
else if num[1] == "C"{
    print("\(Double(num[0])!) = \n\(Double(c_to_far(x: Double(num[0])!))) F, \n\(Double(c_to_k(x: Double(num[0])!))) K")
}
else if num[1] == "K"{
    print("\(Double(num[0])!) = \n\(Double(k_to_far(x: Double(num[0])!))) F, \n\(Double(k_to_c(x: Double(num[0])!))) K")
}





































