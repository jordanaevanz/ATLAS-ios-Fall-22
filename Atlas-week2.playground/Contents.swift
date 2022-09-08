import UIKit

struct Person{
    var name: String
}
typealias myNumber = Int
typealias Coordinate = (x: Int, y: Int)

var coordinates: Coordinate = (0,20)
var SpecialNumber : myNumber = 2

coordinates.0
coordinates.1

coordinates.x
coordinates.y

print (coordinates)

enum CardinalDirection: String {
    case north, south, east, west //now these are strings you can use in the app interface
    
    var axis: String{
        switch self {
        case .north, .south:
            // print("vertical")
            return "vertical"
        case .east, .west:
            //print("horizontal")
            return "horizontal"
        }
    }
}

var direction = CardinalDirection.north
    direction.axis
    direction.rawValue // rawValue is north in this case

struct Person1 {
    var firstName: String
    var lastName: String
}

let me = Person1(firstName: "Jordan", lastName: "Evans")

class Human { //can have multiple initializers
    var firstName: String
    var lastName: String
    
    init(name:String){
        let components = name.components(separatedBy: " ")
        firstName = components.first ?? ""
        lastName = components.last ?? ""
    }
}
let human = Human(name: "Jordan Evans")
human.firstName
human.lastName

//struct Coordinates{
//    var x: Int
//    var y: Int
//}
//
//var description: String {
//    "
//}


var list: [Int] = [0,2,3,4,8,93]

for (index, _) in list.enumerated() { // _ means your not using it
    print("on item \(index)") // loop
}


//Array<Int> is a datatype
//var list = [Int]()
//list.append(2)
//list.append(4)
//list.append(6)
//list.append("hello") cant take a string -> would have to turn it into an integer then append it


var dictionary = [Int:String]() //like a hash -> short hand
//not ordered; used to reference something
//var dictionary = dictionary<Int,String>() -> long hand

dictionary[3] = "Three"
dictionary


//func doStuff() -> Void {} // -> indicates return type; if it doesnt return anything, its set to return void
func math(_ number: Int, _ other: Int = 5, another: Int = 1) -> Int { // add default values -> = 5
    print("hello")
    return number + other
}

//can have the same name for another function that does something different
func math(_ number: Float, _ other: Float = 5, another: Float = 1) -> Float { // add default values -> = 5
    print("hello")
    return number + other - another
}

//when you call math it will use pattern matching in order to know which function to call
math(4)
//knows to call the second math function because the first value its sending in is a float
math(4.0, 10, another:3)



import Foundation

var name: String?

func sayHi(name: String?){ // if you can enforce that there is always a value for that variable, dont use optionals
    guard let name else {
        print("No name found")
        return
    }
    //"Hi \(name)"
}

//name = "Jordan"

print("\(name)") // interpolating name
name

if let name = name { //optional unwrapping
    print("about to execute")
    sayHi(name:name)
}

let customName = name != nil ? name! : "Friend" // inmutable variable
//! is the force unwrap operator -> bad practice, ! means if its nil code will crash
// better to do it like lines 125-128

let customName = name ?? "Friend"

//if let name = name { //optional unwrapping
//   customName = name
//} else {
//    customName = "Friend"
//}

sayHi(name: customName)

