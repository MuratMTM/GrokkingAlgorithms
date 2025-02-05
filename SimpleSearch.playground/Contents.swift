import Foundation

let arr = [45, 53, 78, 34, 58, 56, 73]

func simpleSearch(arr: [Int], number: Int) -> Int {
    for i in 0..<arr.count {
        if arr[i] == number {
            return i
        }
    }
    return -1
}

let searchNumber = 78
let result = simpleSearch(arr: arr, number: searchNumber)

if result != -1 {
    print("\(searchNumber) is found at index \(result) in the array.")
} else {
    print("\(searchNumber) is not found in the array.")
}


