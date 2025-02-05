import Foundation

func binarySearch(arr: [Int], number: Int) -> Int? {
    var firstIndex: Int = 0
    var lastIndex: Int = array.count - 1
    
    while (firstIndex <= lastIndex){
        var midIndex: Int = (firstIndex + lastIndex) / 2
        var guess: Int = arr[midIndex]
        
        if(guess == number) {
            return midIndex
        }
        else if(guess < number){
            firstIndex = midIndex + 1
            
        }
        else{
            lastIndex = midIndex - 1
        }
    }
    
    return nil
    
}

var array: [Int] = [9,16,27,53,67,81,98]
binarySearch(arr: array, number: 16)
