import Foundation


func mergeSort(_ arr: [Int]) -> [Int] {
    guard arr.count > 1 else { return arr }
    
    let mid = arr.count / 2
    let left = mergeSort(Array(arr[..<mid]))
    let right = mergeSort(Array(arr[mid...]))

    return merge(left, right)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var result: [Int] = [], l = 0, r = 0
    
    while l < left.count, r < right.count {
        if left[l] < right[r] {
            result.append(left[l])
            l += 1
        } else {
            result.append(right[r])
            r += 1
        }
    }
    
    return result + left[l...] + right[r...]
}


let arr = [6,3,4,1,5,2,7,0]
print(mergeSort(arr))

