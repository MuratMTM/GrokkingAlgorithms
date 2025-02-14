import Foundation

func recursiveReverse(_ str: String) -> String{
    
    if str.isEmpty {
        return str
    }
    
    let firstChar = str.first!
    let remainingString = String(str.dropFirst())
    
    return recursiveReverse(remainingString) + String(firstChar)
    
    }

recursiveReverse("SwiftUI")




























//func sumOfDivisors(number: Int) -> Int {
//    var sum = 0
//    var divider: Int = 1
//    
//    while divider <= number {
//        if number % divider == 0  {
//          sum += divider
//        }
//        divider += 1
//    }
//    
//    return sum
//}
//
//print(sumOfDivisors(number: 65))
