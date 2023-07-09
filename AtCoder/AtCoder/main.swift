import Foundation

func main() {
    var scanner = Scanner()
    let A = scanner.read(Int.self)
    let B = scanner.read(Int.self)

    if A+1 == B && A%3 != 0 {
        print("Yes")
    }else{
        print("No")
    }

}

main()

// let str = scanner.read(String.self)
// let int = scanner.read(Int.self)
// let lists = scanner.read(String.self, count: {配列数})
// let fields = scanner.read(String.self, count: {2次配列の大きさ}).map(Array.init)
struct Scanner {
    private var tokens = [String]()
    private var index = 0
    
    mutating func read<T>(_ type: T.Type) -> T where T: LosslessStringConvertible {
        T(read())!
    }
    
    mutating func read<T>(_ type: T.Type, count n: Int) -> [T] where T: LosslessStringConvertible {
        (0 ..< n).map { _ in read(type) }
    }
    
    private mutating func read() -> String {
        while tokens.count == index {
            tokens = readLine()!.split(separator: " ").map(\.description)
            index = 0
        }
        defer {
            index += 1
        }
        return tokens[index]
    }
}
