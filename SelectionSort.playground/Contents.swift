import Foundation

func findSmallestIndex(arr: [Int]) -> Int {
    var smallest = arr[0]
    var smallestIndex: Int = 0
    
    for index in 0...(arr.count-1) {
        if (arr[index] < smallest) {
            smallest = arr[index]
            smallestIndex = index
        }
    }    
    return  smallestIndex
}

func selectionSort(arr: [Int]) -> [Int] {
    var newArr:[Int] = []
    var copiedArray = arr
    var smallestIndex: Int = 0
    for i in 0 ... (copiedArray.count-1) {
        smallestIndex = findSmallestIndex(arr: copiedArray)
        newArr.append(copiedArray[smallestIndex])
        copiedArray.remove(at: smallestIndex)        
    }
    return newArr
}

var arr: [Int] = [47,7,196,14,72,45,93]

print(selectionSort(arr: arr))

