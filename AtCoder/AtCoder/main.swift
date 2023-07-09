import Foundation

func main() {
    var scanner = Scanner()
    let N = scanner.read(Int.self)
    let K = scanner.read(Int.self)


    var total = 0
    var pair : [(Int,Int)] = []

    for _ in 0..<N{
        let day = scanner.read(Int.self)
        let num = scanner.read(Int.self)
        pair.append((day,num))
        total += num
    }

    if total <= K {
        print(1)
        return
    }

    pair.sort{ $0.0 < $1.0 }

    for item in pair {
        total -= item.1
        if total <= K {
            print(item.0 + 1)
            break
        }
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
