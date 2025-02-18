import Foundation

func draw(_ n: Int) {
    if n <= 0 {
        return
    }
    
    draw(n - 1)
    
    for _ in 0..<n {
        print("#", terminator: "")
    }
    print()
}

draw(5)
