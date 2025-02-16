import Foundation

func quickSort(_ arr: [Int]) -> [Int] {
    
    if arr.count < 2 {
        return arr
    }
    
    let pivotIndex = arr.count / 2
    let pivot = arr[pivotIndex]
    var less: [Int] = []
    var greater: [Int] = []
    
    for i in 0..<arr.count {
        
        if i == pivotIndex { continue }
        
        if arr[i] < pivot {
            less.append(arr[i])
        }
        else {
            greater.append(arr[i])
        }
    }
    
    return quickSort(less) + [pivot] + quickSort(greater)
}

let arr = [35, 73, 41, 18, 82]
let sortedArr = quickSort(arr)
print(sortedArr)

